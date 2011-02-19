//
//  Annotation.h
//  GeoTrash
//
//  Created by Patrick Russell on 15/01/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>


@interface Annotation : NSObject <MKAnnotation> {
	
	NSNumber *latitude;
    NSNumber *longitude;

}

@property (nonatomic, retain) NSNumber *latitude;
@property (nonatomic, retain) NSNumber *longitude;

@end
