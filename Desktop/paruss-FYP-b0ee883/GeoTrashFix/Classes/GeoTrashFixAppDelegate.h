//
//  GeoTrashFixAppDelegate.h
//  GeoTrashFix
//
//  Created by Patrick Russell on 09/01/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GeoTrashFixViewController;

@interface GeoTrashFixAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    GeoTrashFixViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GeoTrashFixViewController *viewController;

@end

