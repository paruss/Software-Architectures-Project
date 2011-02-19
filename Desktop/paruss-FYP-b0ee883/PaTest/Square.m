//
//  Square.m
//  PaTest
//
//  Created by Patrick Russell on 05/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Square.h"


@implementation Square : Rectangle
-(void) setSide:(int)s{
	[self setWH:s:s];
}
-(int) side{
	return width;
}

@end
