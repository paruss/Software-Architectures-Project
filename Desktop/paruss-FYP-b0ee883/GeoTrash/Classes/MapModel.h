//
//  MapModel.h
//  GeoTrash
//
//  Created by Patrick Russell on 08/01/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKReverseGeocoder.h>
#import <CoreLocation/CoreLocation.h>
 

@interface MapModel : NSObject < MKMapViewDelegate > {
	MKMapView *mapView;

}

@end
