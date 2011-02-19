//
//  Rectangle.h
//  PaTest
//
//  Created by Patrick Russell on 04/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//
#import <Foundation/Foundation.h>

@class XYPoint;

@interface Rectangle : NSObject {
	int width;
	int height;
	XYPoint *origin;

}
@property int width, height; //define properties
-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(int) area;
-(int) perimeter;
-(void) setWH:(int) w:(int) h;

@end
