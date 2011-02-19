//
//  Cacher.h
//  GeoTrash
//
//  Created by Patrick Russell on 18/01/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h> 
#import "ASIFormDataRequest.h"
#import "TrashPiece.h"


@interface Cacher : NSObject {
	
	// Database variables
	NSString *databaseName;
	NSString *databasePath;
	NSMutableArray *cachedItems;
	
	// Array to store the litter data
	NSMutableArray *locCache;
	id delegate;
	int *rowsInRemDB;

}

-(void)checkAndCreateDatabase;
-(void)buildDatabaseFromRemoteData;
-(void)dbToArray;
//-(void)starter;

@property (nonatomic, retain) NSMutableArray *locCache;
@property (nonatomic, assign) id delegate;

@end
