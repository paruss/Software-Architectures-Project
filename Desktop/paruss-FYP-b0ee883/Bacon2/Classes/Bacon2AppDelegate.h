//
//  Bacon2AppDelegate.h
//  Bacon2
//
//  Created by Patrick Russell on 11/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Bacon2ViewController;

@interface Bacon2AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Bacon2ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Bacon2ViewController *viewController;

@end

