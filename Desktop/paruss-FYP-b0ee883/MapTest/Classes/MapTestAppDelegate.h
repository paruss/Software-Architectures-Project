//
//  MapTestAppDelegate.h
//  MapTest
//
//  Created by Patrick Russell on 21/12/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MapTestViewController;

@interface MapTestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MapTestViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MapTestViewController *viewController;

@end

