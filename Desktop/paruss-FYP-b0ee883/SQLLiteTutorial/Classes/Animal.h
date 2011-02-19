//
//  Animal.h
//  SQLLiteTutorial
//
//  Created by Patrick Russell on 03/11/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject {
	NSString *name;
	NSString *description;
	NSString *imageURL;
}

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *description;
@property (nonatomic, retain) NSString *imageURL;

-(id)initWithName:(NSString *)n description:(NSString *)d url:(NSString *)u;

@end