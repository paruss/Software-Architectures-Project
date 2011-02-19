//
//  Cacher.m
//  GeoTrash
//
//  Created by Patrick Russell on 18/01/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Cacher.h"

static sqlite3 *database = nil;

@implementation Cacher

@synthesize locCache, delegate;

static sqlite3_stmt *addStmt = nil;

-(void)checkAndCreateDatabase{
	
	 // Check to see if the database is already loaded to phone
	
	NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDir = [documentPaths objectAtIndex:0];
	databasePath = [documentsDir stringByAppendingPathComponent:databaseName];	
	
	BOOL success;
	
	// Create a FileManager object, we will use this to check the status
	// of the database and to copy it over if required
	
	NSFileManager *fileManager = [NSFileManager defaultManager];
	
	// Check if the database has already been created in the users filesystem
	
	success = [fileManager fileExistsAtPath:databasePath];
	
	// If the database already exists then return without doing anything
	if(success) return;
	
	[fileManager delete:databasePath];
	
	// If not then proceed to copy the database from the application to the users filesystem
	
	// Get the path to the database in the application package
	
	NSString *databasePathFromApp = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:databaseName];
	
	// Copy the database from the package to the users filesystem
	[fileManager copyItemAtPath:databasePathFromApp toPath:databasePath error:nil];
	
	[fileManager release];
	

}
	
-(void)buildDatabaseFromRemoteData{
	
		
		// Starts the asynchronous request which calls for all the rubbish items from the remote server.
	
		locCache = [[NSMutableArray alloc] init];
		
	    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	    NSString *documentsDir = [documentPaths objectAtIndex:0];
	    databasePath = [documentsDir stringByAppendingPathComponent:databaseName];
	
		NSURL *url = [NSURL URLWithString:@"http://www.skynet.ie/~paruss/iPhone/getLocations.php"];
		ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:url];
		[request setDelegate:self];
		[request setDidFinishSelector:@selector(requestFinished:)];
		[request startAsynchronous];
		
		//check and create the database 
	
		[self checkAndCreateDatabase];
		
	}
	
	- (void)requestFinished:(ASIHTTPRequest *)request
	{
		
		databaseName = @"Cache1.sql";
		//once the http request returns do this stuff
		
	    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	    NSString *documentsDir = [documentPaths objectAtIndex:0];
		databasePath = [documentsDir stringByAppendingPathComponent:databaseName];
		
	
		
		if(sqlite3_open([databasePath UTF8String], &database) == SQLITE_OK) {
			
			// Setup the SQL Statement and compile it for faster access
			// insert the values into the local database.
			const char *delStatement = "delete from cache where 1=1";	
			sqlite3_stmt *compDelStatement;	
			
			if(sqlite3_prepare_v2(database, delStatement, -1, &compDelStatement, NULL) == SQLITE_OK){
				while(sqlite3_step(compDelStatement) == SQLITE_ROW) {
				}
			}
			
			
			else {
				//if there is a problem with the SQL statment display the text and the error.
				NSAssert1(0, @"Error while creating add statement. '%s'", sqlite3_errmsg(database));
			}
			// Release the compiled statement from memory
			sqlite3_finalize(compDelStatement);
			
		}
		
	
		
		
		
		// Use when fetching text data
		NSString *responseString = [request responseString];
		NSLog(@"Response: %@", responseString);
		NSArray *chunks = [responseString componentsSeparatedByString: @" "];
		
		
		
		// the number of individual records in the table
	    int count = [chunks count];
		//iterate through each item 
		int i = 0;
		
		while (count >= 3)
		{
			
			const char *sqlStatement = "insert into cache(id, timestamp, latitude, longitude) VALUES (?, ?, ?, ?)";
			
			if(sqlite3_prepare_v2(database, sqlStatement, -1, &addStmt, NULL) != SQLITE_OK)
				NSAssert1(0, @"Error while creating add statement. '%s'", sqlite3_errmsg(database));
			
			
			
	        int ID = [[chunks objectAtIndex:i] intValue];
			int ts = [[chunks objectAtIndex:i + 1] intValue];
			double lat = [[chunks objectAtIndex:i + 2] doubleValue];
			double lon = [[chunks objectAtIndex:i +  3] doubleValue];
			
			sqlite3_bind_int (addStmt, 1, ID);
			sqlite3_bind_int (addStmt, 2, ts);
			sqlite3_bind_double(addStmt, 3, lat);
			sqlite3_bind_double(addStmt, 4, lon);
			
			if(SQLITE_DONE != sqlite3_step(addStmt))
				NSAssert1(0, @"Error while inserting data. '%s'", sqlite3_errmsg(database));
	
			
			//Reset the add statement.
			sqlite3_reset(addStmt);
			
			//picking out each item from the row 
		
						
			sqlite3_close(database);
			i += 4;
			count -= 4;
			
		}
		
	}

	- (void)dbToArray

	{
		    sqlite3 *database;
		
			databaseName = @"Cache1.sql";
		
			// Get the path to the documents directory and append the databaseName
		
			cachedItems = [[NSMutableArray alloc] init];
		
			// Execute the "checkAndCreateDatabase" function
		
			[self checkAndCreateDatabase];
		
			if(sqlite3_open([databasePath UTF8String], &database) == SQLITE_OK) {
			// Setup the SQL Statement and compile it for faster access
			const char *sqlStatement = "select * from cache";
			
			
			sqlite3_stmt *compiledStatement;
			
				
				
			if(sqlite3_prepare_v2(database, sqlStatement, -1, &compiledStatement, NULL) == SQLITE_OK) {
				// Loop through the results and add them to the feeds array
				// int comptest = sqlite3_step(compiledStatement) -1;
				// int sqliterow = SQLITE_ROW;
				while(sqlite3_step(compiledStatement) == SQLITE_ROW) {
					
					// Read the data from the result row
					NSString *aId = [NSString stringWithUTF8String:(char *)sqlite3_column_text(compiledStatement, 0)];
					NSString *aTimestamp = [NSString stringWithUTF8String:(char *)sqlite3_column_text(compiledStatement, 1)];
					NSString *aLatitude = [NSString stringWithUTF8String:(char *)sqlite3_column_text(compiledStatement, 2)];
					NSString *aLongitude = [NSString stringWithUTF8String:(char *)sqlite3_column_text(compiledStatement, 3)];
					NSString *aImage = @"";
					
					// Create a new trash object with the data from the database
					TrashPiece *trash = [[TrashPiece alloc] initWithID:aId ts:aTimestamp lat:aLatitude lon:aLongitude img:aImage];
					
					// Add the trash object to the animals Array
					[cachedItems addObject:trash];
					
				    [trash release];
				}
			}
			
			else {
				
				NSAssert1(0, @"Error while creating add statement. '%s'", sqlite3_errmsg(database));
			}

		
			// Release the compiled statement from memory
			sqlite3_finalize(compiledStatement);
			
		}
		sqlite3_close(database);
		
			
	}

	- (void)requestFailed:(ASIHTTPRequest *)request
	{
		NSError *error = [request error];
		NSLog(@"Fail %@", error);
	}


@end
