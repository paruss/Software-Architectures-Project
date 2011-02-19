//
//  GeoTrashViewController.h
//  GeoTrash
//
//  Created by Patrick Russell on 22/12/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKReverseGeocoder.h>
#import <CoreLocation/CoreLocation.h>
#import "Location.h"
#import "ASIFormDataRequest.h"
#import "MapViewController.h"
#import "MapModel.h"
#import "MapModel.m"
#import "GeoTrashAppDelegate.h"


@interface GeoTrashViewController : UIViewController  < LocationDelegate, UINavigationControllerDelegate, MKMapViewDelegate, UIImagePickerControllerDelegate ,NSNetServiceBrowserDelegate, CLLocationManagerDelegate > {
	UIImageView * theImageView;
	UIButton * takePhoto;
	UIButton * sentPhoto;
	MKMapView *mapView;
	NSString *lat;
	NSString *lon;
	]NSMutableArray *mapAnnotations;
	
	Location *CLController;


}
@property (nonatomic, retain) IBOutlet UIImageView * theImageView;
@property (nonatomic, retain) IBOutlet UIButton * sentPhoto;
@property (nonatomic, retain) IBOutlet UIButton * takePhoto;
@property (nonatomic, retain) NSString *lat;
@property (nonatomic, retain) NSString *lon;
@property (nonatomic, retain) Location *CLController;



- (IBAction)getPhoto:(id)sender;
- (IBAction)loadMap:(id)sender;
- (IBAction)sentGPS:(id)sender;
- (IBAction)Update:(id)sender;
- (IBAction)populateLocationList:(id)sender;
- (IBAction) remMap:(id) sender;



@end

