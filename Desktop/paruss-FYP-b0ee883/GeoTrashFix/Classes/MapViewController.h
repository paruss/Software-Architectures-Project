//
//  MapView.h
//  GeoTrash
//
//  Created by Patrick Russell on 04/01/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKReverseGeocoder.h>
#import <CoreLocation/CoreLocation.h>


@interface MapViewController : UIViewController < UINavigationControllerDelegate, MKMapViewDelegate, CLLocationManagerDelegate > { 

	MKMapView *mapView;
	
}

@end
