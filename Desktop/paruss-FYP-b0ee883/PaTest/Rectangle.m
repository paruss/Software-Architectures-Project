//
//  Rectangle.m
//  PaTest
//
//  Created by Patrick Russell on 04/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Rectangle.h"


@implementation Rectangle
@synthesize width, height; //setters an getters
	-(void) setWH:(int) w:(int) h{
width = w;
height = h;
	}

-(int) area{
	return width*height;
	}
-(int) perimeter{
	return (width + height*2);
	}
-(XYPoint *) origin{
	return origin;
}
-(void) setOrigin: (XYPoint *) pt;{
	origin=pt;
}
@end
