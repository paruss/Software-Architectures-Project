//
//  TrashPiece.m
//  GeoTrash
//
//  Created by Patrick Russell on 06/02/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//
// The trash piece object 

#import "TrashPiece.h"


@implementation TrashPiece
@synthesize iD, timestamp, latitude, longitude, image;


-(id)initWithID:(NSString *)i ts:(NSString *)t lat:(NSString *)a lon:(NSString *)o img:(NSString *)m{
	
	self.iD = i;
	self.timestamp = t;
	self.latitude = a;
	self.longitude = o;
	self.image = m;
	return self;
}
@end
