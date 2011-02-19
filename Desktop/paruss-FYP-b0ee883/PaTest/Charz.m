//
//  Charz.m
//  PaTest
//
//  Created by Patrick Russell on 10/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Charz.h"


@implementation Charz

-(void) setCharz{
	c1='B';
	c2='W';
}
-(void) add{
	NSLog(@"%c%c", c1, c2);
}
-(void) print{
	NSLog(@"I am from the charz class!");
	}

@end
