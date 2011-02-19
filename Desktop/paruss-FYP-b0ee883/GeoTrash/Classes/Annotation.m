//
//  Annotation.m
//  GeoTrash
//
//  Created by Patrick Russell on 15/01/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Annotation.h"


@implementation Annotation

@synthesize latitude;
@synthesize longitude;


- (CLLocationCoordinate2D)coordinate;
{
    CLLocationCoordinate2D theCoordinate;
    theCoordinate.latitude = 52.16882002;
    theCoordinate.longitude = -8.22669398;

    return theCoordinate; 
}

- (void)dealloc
{
    [super dealloc];
}


- (NSString *)title
{
    return @"Main Title";
}

// optional
- (NSString *)subtitle
{
    return @"Sub Title";
}

@end
