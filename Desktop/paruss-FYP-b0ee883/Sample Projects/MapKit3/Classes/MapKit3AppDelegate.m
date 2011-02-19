//
//  MapKit3AppDelegate.m
//  MapKit3
//
//  Created by Gavi Narra on 4/6/09.
//  Copyright ObjectGraph LLC 2009. All rights reserved.
//

#import "MapKit3AppDelegate.h"
#import "MainViewController.h"

@implementation MapKit3AppDelegate


@synthesize window;
@synthesize mainViewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
	MainViewController *aController = [[MainViewController alloc] initWithNibName:@"MainView" bundle:nil];
	self.mainViewController = aController;
	[aController release];
	
    mainViewController.view.frame = [UIScreen mainScreen].applicationFrame;
	[window addSubview:[mainViewController view]];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [mainViewController release];
    [window release];
    [super dealloc];
}

@end
