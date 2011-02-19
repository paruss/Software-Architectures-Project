//
//  SQLLiteTutorialAppDelegate.h
//  SQLLiteTutorial
//
//  Created by Patrick Russell on 03/11/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <sqlite3.h> // Import the SQLite database framework

@interface SQLiteTutorialAppDelegate : NSObject  {
	
    UIWindow *window;
    UINavigationController *navigationController;
	
	// Database variables
	NSString *databaseName;
	NSString *databasePath;
	
	// Array to store the animal objects
	NSMutableArray *animals;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (nonatomic, retain) NSMutableArray *animals;

@end
