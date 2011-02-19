//
//  TrashPiece.h
//  GeoTrash
//
//  Created by Patrick Russell on 06/02/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TrashPiece : NSObject {

	
	NSString *iD;
	NSString *timestamp;
	NSString *latitude;
	NSString *longitude;
	NSString *image;
	
}

@property (nonatomic, retain) NSString *iD;
@property (nonatomic, retain) NSString *timestamp;
@property (nonatomic, retain) NSString *latitude;
@property (nonatomic, retain) NSString *longitude;
@property (nonatomic, retain) NSString *image;

-(id)initWithID:(NSString *)i ts:(NSString *)t lat:(NSString *)a lon:(NSString *)o img:(NSString *)m;

@end
