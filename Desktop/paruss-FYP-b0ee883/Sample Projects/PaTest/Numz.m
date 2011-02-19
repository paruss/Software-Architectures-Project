//
//  Numz.m
//  PaTest
//
//  Created by Patrick Russell on 10/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Numz.h"


@implementation Numz

-(void) setNumbers: (int) a:(int) b{
	num1=a;
	num2=b;
}
-(void) add{
	answer=num1+num2;
}

-(void) print{
	NSLog(@"I am from the Numbers class!", answer);
}

@end
