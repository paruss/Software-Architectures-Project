//
//  MapKitAppDelegate.h
//  MapKit
//
//  Created by Patrick Russell on 21/12/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MapKitViewController;

@interface MapKitAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MapKitViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MapKitViewController *viewController;

@end

