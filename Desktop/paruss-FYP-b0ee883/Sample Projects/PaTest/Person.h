//
//  Person.h
//  PaTest
//
//  Created by Patrick Russell on 03/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject {
	int age;
	int weight;
}
@property int age, weight;
-(void) print;
-(void) dateAge: (int) a:(int) i;


@end
