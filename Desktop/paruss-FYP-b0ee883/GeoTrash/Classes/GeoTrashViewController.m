//
//  GeoTrashViewController.m
//  GeoTrash
//
//  Created by Patrick Russell on 22/12/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "GeoTrashViewController.h"
#import "MapViewController.h"
#import "Annotation.h"
#import "AnnotationViewController.h"

enum
{
    kAnnotationIndex = 10,
};

@implementation GeoTrashViewController


@synthesize theImageView, sentPhoto, takePhoto, lat, lon, CLController, mapAnnotations, mapView, annotationViewController, cacher;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.

- (void)viewDidLoad {
	CLController = [[Location alloc] init];
	CLController.delegate = self;
	[CLController.locMgr startUpdatingLocation];
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated
{
    // bring back the toolbar
    [self.navigationController setToolbarHidden:NO animated:NO];
}

-(IBAction) getPhoto:(id) sender{
	// load the image picker view
	UIImagePickerController * picker = [[UIImagePickerController alloc] init];
	picker.delegate = self;
	
	if((UIButton *) sender == sentPhoto) {
		picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
	} else {
		picker.sourceType = UIImagePickerControllerSourceTypeCamera;
	}
	//make visable
	[self presentModalViewController:picker animated:YES];
}


- (IBAction)sentGPS:(id)sender{
	
	NSURL *url;
	NSMutableURLRequest * request;

	request = [NSMutableURLRequest requestWithURL:url];
	[request setHTTPMethod:@"POST"];
	
	
	NSData *photoData= UIImageJPEGRepresentation(self.theImageView.image, 1.0);
	if (photoData == nil) {
		NSLog(@"The photo is nothing !!!");
	}
	else {
		NSLog(@"Photo inside !!!!");
	}
	
}


-(IBAction) loadMap:(id) sender{
	
	//display a map on screen load to current positon and display pins.
	
    [super viewDidLoad];
	mapView=[[MKMapView alloc] initWithFrame:self.view.frame];
	mapView.showsUserLocation=TRUE;
	mapView.delegate=self;
	[self.view insertSubview:mapView atIndex:5];
	CLLocationManager *locationManager=[[CLLocationManager alloc] init];
	locationManager.delegate=self;
	locationManager.desiredAccuracy=kCLLocationAccuracyNearestTenMeters;
	[locationManager startUpdatingLocation];
	
	UIBarButtonItem *temporaryBarButtonItem = [[UIBarButtonItem alloc] init];
	temporaryBarButtonItem.title = @"Back";
	self.navigationItem.backBarButtonItem = temporaryBarButtonItem;
	[temporaryBarButtonItem release];
    
	cacher = [[Cacher alloc]init];
	id number;
	number = self.cacher;

	[number dbToArray];
	//[cacher checkAndCreateDatabase];
	[number buildDatabaseFromRemoteData];
	
    // create out annotations array (in this example only 2)
    self.mapAnnotations = [[NSMutableArray alloc] initWithCapacity:1];
    
    // annotation for the City of San Francisco
    Annotation *annotation = [[Annotation alloc] init];
    [self.mapAnnotations insertObject:annotation atIndex:0];
	[self.mapView addAnnotation:[self.mapAnnotations objectAtIndex:0]];
    [annotation release];
	
}

- (void)showDetails:(id)sender
{
	
	AnnotationViewController *annotation= [[AnnotationViewController alloc] initWithNibName:@"AnnotationViewController" bundle:nil];
	[self.view.superview addSubview:annotation.view];

}

- (MKAnnotationView *)mapView:(MKMapView *)theMapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    // if it's the user location, just return nil.
    if ([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    
    // handle our two custom annotations
    //
    if ([annotation isKindOfClass:[Annotation class]]) // for Golden Gate Bridge
    {
        // try to dequeue an existing pin view first
        static NSString* AnnotationIdentifier = @"AnnotationIdentifier";
        MKPinAnnotationView* pinView = (MKPinAnnotationView *)
		[mapView dequeueReusableAnnotationViewWithIdentifier:AnnotationIdentifier];
        if (!pinView)
        {
            // if an existing pin view was not available, create one
            MKPinAnnotationView* customPinView = [[[MKPinAnnotationView alloc]
												   initWithAnnotation:annotation reuseIdentifier:AnnotationIdentifier] autorelease];
            customPinView.pinColor = MKPinAnnotationColorPurple;
            customPinView.animatesDrop = YES;
            customPinView.canShowCallout = YES;
    
            UIButton* rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
            [rightButton addTarget:self
                            action:@selector(showDetails:)
                  forControlEvents:UIControlEventTouchUpInside];
            customPinView.rightCalloutAccessoryView = rightButton;
			
            return customPinView;
        }
        else
        {
            pinView.annotation = annotation;
        }
        return pinView;
    }
    
    return nil;
}


-(IBAction) remMap:(id) sender{
	
[mapView removeFromSuperview];

}
- (void)locationUpdate:(CLLocation *)location {
//	locLabel.text = [location description];
	self.lat = [[NSString alloc]init];
	NSString *locLat;
	NSString *locLong;
	locLat  = [NSString stringWithFormat:@"%lf", location.coordinate.latitude];
	locLong  = [NSString stringWithFormat:@"%lf", location.coordinate.longitude];
	self.lat = locLat;
	self.lon = locLong;
}

- (void)locationError:(NSError *)error {
//	locLabel.text = [error description];
}
	
	- (IBAction)Update:(id)sender
	{
		NSString *latPost = self.lat;
		NSString *lonPost = self.lon;
		NSURL *url = [NSURL URLWithString:@"http://www.skynet.ie/~paruss/iPhone/Uploader.php"];
		ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:url];
		[request setPostValue:lonPost forKey:@"lon"];
		[request setPostValue:latPost forKey:@"lat"];
		[request start]; 
		NSError *error = [request error];
		if (!error) {
			
			NSString *response = [request responseString];
			NSLog(@"Output", response);
		
		}
	}
	

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
	[picker dismissModalViewControllerAnimated:YES];


	self.theImageView.image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
	
}


- (IBAction)populateLocationList:(id)sender
{
	cacher = [[Cacher alloc]init];
	id number;
	
	//[number locationsArray];	
	
	number = self.cacher;
    [number buildDatabaseFromRemoteData];
	
}

- (IBAction)loadFromDB:(id)sender
{
	cacher = [[Cacher alloc]init];
	id number;
	
	number = self.cacher;
	
	// Get the path to the documents directory and append the databaseName

	[number dbToArray];
		
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
	
}

@end
