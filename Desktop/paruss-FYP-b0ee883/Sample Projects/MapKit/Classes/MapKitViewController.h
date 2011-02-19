//
//  MapKitViewController.h
//  MapKit
//
//  Created by Patrick Russell on 21/12/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKAnnotation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MKMapView.h>
#import <AudioToolbox/AudioServices.h>

@interface MapKitViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate> {

	MKMapView *mapView;
	
	CLLocationManager *locationManager;
	
	CLLocationCoordinate2D location;
	
	
}

@property (nonatomic, retain) CLLocationManager *locationManager;
@property (nonatomic, readonly) CLLocationCoordinate2D location;

@end

