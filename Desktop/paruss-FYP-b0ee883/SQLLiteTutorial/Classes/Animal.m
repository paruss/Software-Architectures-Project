//
//  Animal.m
//  SQLLiteTutorial
//
//  Created by Patrick Russell on 03/11/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Animal.h"

@implementation Animal
@synthesize name, description, imageURL;

-(id)initWithName:(NSString *)n description:(NSString *)d url:(NSString *)u {
	self.name = n;
	self.description = d;
	self.imageURL = u;
	return self;
}
@end