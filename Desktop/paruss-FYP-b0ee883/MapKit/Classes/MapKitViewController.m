//
//  MapKitViewController.m
//  MapKit
//
//  Created by Patrick Russell on 21/12/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MapKitViewController.h"

@implementation MapKitViewController

@synthesize locationManager, location;


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	mapView = [[MKMapView alloc] initWithFrame:self.view.bounds];
	[self.view insertSubview:mapView atIndex:0];
	
	mapView.showsUserLocation = YES; //if yes shows a blue circle where you are
	mapView.mapType = MKMapTypeStandard;
	mapView.delegate = self;
	mapView.zoomEnabled = YES;
	mapView.scrollEnabled = YES;
	mapView.userInteractionEnabled = YES;
	
	//initial setup for location manager
	
	self.locationManager = [[CLLocationManager alloc] init];
	locationManager.delegate = self;
	locationManager.desiredAccuracy = kCLLocationAccuracyBest;
	
	[locationManager startUpdatingLocation];
	[locationManager startUpdatingHeading];
}	

-(void) locationManager: (CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
	NSLog (@"Location updated");
	location = newLocation.coordinate;
	
	//once locaiton is obtained, zoom to that location
	
	MKCoordinateRegion region;
	region.center = location;
	
	//set zoom level using span
	MKCoordinateSpan span;
	span.latitudeDelta = 0.003;
	span.longitudeDelta = 0.0003;
	region.span = span;
	
	[mapView setRegion:region animated:FALSE];
	
	
	
}

- (MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation> ) annotation{
	NSLog(@"Annotation view run");
	
	MKPinAnnotationView *annView=[[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"currentloc"];
	annView.animatesDrop=FALSE;
	return annView;
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
