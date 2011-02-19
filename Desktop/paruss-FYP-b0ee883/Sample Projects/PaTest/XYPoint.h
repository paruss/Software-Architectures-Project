//
//  XYPoint.h
//  PaTest
//
//  Created by Patrick Russell on 05/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface XYPoint : NSObject {
	int x;
	int y;
}

@property int x,y;
-(void) setXY: (int) xVal: (int) yVal;

@end
