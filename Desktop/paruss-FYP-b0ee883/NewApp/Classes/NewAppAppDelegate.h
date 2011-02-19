//
//  NewAppAppDelegate.h
//  NewApp
//
//  Created by Patrick Russell on 29/09/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NewAppViewController;

@interface NewAppAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    NewAppViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet NewAppViewController *viewController;

@end

