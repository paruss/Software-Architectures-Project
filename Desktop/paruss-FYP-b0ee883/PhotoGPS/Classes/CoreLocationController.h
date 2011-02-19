//
//  CoreLocationController.h
//  Techmation
//
//  Created by macminiserver on 2010/10/13.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>


//這邊的Delegate通通要放在上面，還真奇怪...
@protocol CoreLocationControllerDelegate 

@required
- (void)locationUpdate:(CLLocation *)location; // Our location updates are sent here
- (void)locationError:(NSError *)error; // Any errors are sent here
@end

@interface CoreLocationController : NSObject < CLLocationManagerDelegate,UIApplicationDelegate > {
	CLLocationManager *locMgr;
	id delegate;

}

@property (nonatomic, retain) CLLocationManager *locMgr;
@property (nonatomic, assign) id delegate;

@end

//define an instance variable of CLLocationManager type named locMgr.