//
//  Location.h
//  GeoTrash
//
//  Created by Patrick Russell on 29/12/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>



//這邊的Delegate通通要放在上面，還真奇怪...
@protocol LocationDelegate 

@required
- (void)locationUpdate:(CLLocation *)location; // Our location updates are sent here
- (void)locationError:(NSError *)error; // Any errors are sent here
@end

@interface Location : NSObject < CLLocationManagerDelegate,UIApplicationDelegate > {
	CLLocationManager *locMgr;
	id delegate;
	
}

@property (nonatomic, retain) CLLocationManager *locMgr;
@property (nonatomic, assign) id delegate;

@end
