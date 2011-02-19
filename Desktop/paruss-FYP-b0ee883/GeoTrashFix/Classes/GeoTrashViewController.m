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
@implementation GeoTrashViewController


@synthesize theImageView ,sentPhoto, takePhoto, lat, lon, CLController;
/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	CLController = [[Location alloc] init];
	CLController.delegate = self;
	[CLController.locMgr startUpdatingLocation];
    [super viewDidLoad];
}


-(IBAction) getPhoto:(id) sender{
	UIImagePickerController * picker = [[UIImagePickerController alloc] init];
	picker.delegate = self;
	
	if((UIButton *) sender == sentPhoto) {
		picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
	} else {
		picker.sourceType = UIImagePickerControllerSourceTypeCamera;
	}
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
	
	
    [super viewDidLoad];
	mapView=[[MKMapView alloc] initWithFrame:self.view.frame];
	mapView.showsUserLocation=TRUE;
	mapView.delegate=self;
	[self.view insertSubview:mapView atIndex:5];
	CLLocationManager *locationManager=[[CLLocationManager alloc] init];
	locationManager.delegate=self;
	locationManager.desiredAccuracy=kCLLocationAccuracyNearestTenMeters;
	[locationManager startUpdatingLocation];

	
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
		NSURL *url = [NSURL URLWithString:@"http://www.skynet.ie/~paruss/iPhone/Uploader.php"];
		ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:url];
		[request setPostValue:latPost forKey:@"Coordinates"];
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

	NSURL *url = [NSURL URLWithString:@"http://www.skynet.ie/~paruss/iPhone/getLocations.php"];
	//NSURL *url = [NSURL URLWithString:@"http://www.skynet.ie/~paruss/iPhone/Uploader.php"];
	ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:url];
	[request setDelegate:self];
	[request setDidFinishSelector:@selector(requestFinished:)];
	[request startAsynchronous];	
}

- (void)requestFinished:(ASIHTTPRequest *)request
{
	// Use when fetching text data
	NSString *responseString = [request responseString];
	NSLog(@"Response: %@", responseString);
}

- (void)requestFailed:(ASIHTTPRequest *)request
{
	NSError *error = [request error];
	NSLog(@"Fail %@", error);
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

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
