//
//  BuckysButtonsAppDelegate.h
//  BuckysButtons
//
//  Created by Patrick Russell on 10/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BuckysButtonsViewController;

@interface BuckysButtonsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    BuckysButtonsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet BuckysButtonsViewController *viewController;

@end

