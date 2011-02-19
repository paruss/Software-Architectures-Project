#import "MainViewController.h"
#import "MainView.h"


@implementation MainViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}


 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
 - (void)viewDidLoad {
 [super viewDidLoad];
	 mapView=[[MKMapView alloc] initWithFrame:self.view.frame];
	 //mapView.showsUserLocation=TRUE;
	 mapView.delegate=self;
	 [self.view insertSubview:mapView atIndex:0];
	 
	 
	 CLLocationManager *locationManager=[[CLLocationManager alloc] init];
	 locationManager.delegate=self;
	 locationManager.desiredAccuracy=kCLLocationAccuracyNearestTenMeters;
	 
	 [locationManager startUpdatingLocation];
	 
 }


- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller {
    
	[self dismissModalViewControllerAnimated:YES];
}


- (IBAction)showInfo {    
	
	FlipsideViewController *controller = [[FlipsideViewController alloc] initWithNibName:@"FlipsideView" bundle:nil];
	controller.delegate = self;
	
	controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:controller animated:YES];
	
	[controller release];
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


- (void)reverseGeocoder:(MKReverseGeocoder *)geocoder didFailWithError:(NSError *)error{
}

- (void)reverseGeocoder:(MKReverseGeocoder *)geocoder didFindPlacemark:(MKPlacemark *)placemark{
	NSLog(@"Geocoder completed");
	mPlacemark=placemark;
	[mapView addAnnotation:placemark];
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation{
	NSLog(@"View for Annotation is called");
	MKPinAnnotationView *test=[[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"parkingloc"];
	test.userInteractionEnabled=TRUE;
	if([annotation title]==@"Parked Location")
	{
		NSLog(@"Here");
		[test setPinColor:MKPinAnnotationColorPurple];
	}
	else
	{
		[test setPinColor:MKPinAnnotationColorGreen];
	}
	return test;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
	mStoreLocationButton.hidden=FALSE;
	location=newLocation.coordinate;
	//One location is obtained.. just zoom to that location
	
	MKCoordinateRegion region;
	region.center=location;
	//Set Zoom level using Span
	MKCoordinateSpan span;
	span.latitudeDelta=.005;
	span.longitudeDelta=.005;
	region.span=span;
	
	[mapView setRegion:region animated:TRUE];

}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
}

- (IBAction)storeLocationInfo:(id) sender{
	//Either we can use geocoder to get a placemark or just create our own.
	/*
	MKReverseGeocoder *geocoder=[[MKReverseGeocoder alloc] initWithCoordinate:location];
	geocoder.delegate=self;
	[geocoder start];
	*/
	//Our own
	
	ParkPlaceMark *placemark=[[ParkPlaceMark alloc] initWithCoordinate:location];
	[mapView addAnnotation:placemark];
}


@end
