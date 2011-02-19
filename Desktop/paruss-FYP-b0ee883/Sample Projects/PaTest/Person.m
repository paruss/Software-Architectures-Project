//
//  Person.m
//  PaTest
//
//  Created by Patrick Russell on 03/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Person.h"


@implementation Person
@synthesize age,weight;
-(void) print{
	NSLog(@"I am %i years old and weigh %i pounds", age, weight);
}

-(void) dateAge: (int) a:(int) i{
	NSLog(@"You can date chicks %i years old", (a/2+7)-(i/100000));
}


@end
