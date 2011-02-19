//
//  rot2AppDelegate.h
//  rot2
//
//  Created by Patrick Russell on 11/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class rot2ViewController;

@interface rot2AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    rot2ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet rot2ViewController *viewController;

@end

