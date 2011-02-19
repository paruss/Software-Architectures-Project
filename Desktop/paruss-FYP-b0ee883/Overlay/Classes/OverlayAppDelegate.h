//
//  OverlayAppDelegate.h
//  Overlay
//
//  Created by Patrick Russell on 12/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OverlayViewController;

@interface OverlayAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    OverlayViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet OverlayViewController *viewController;

@end

