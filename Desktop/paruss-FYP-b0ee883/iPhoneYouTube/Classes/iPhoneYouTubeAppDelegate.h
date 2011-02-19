//
//  iPhoneYouTubeAppDelegate.h
//  iPhoneYouTube
//
//  Created by Patrick Russell on 10/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iPhoneYouTubeViewController;

@interface iPhoneYouTubeAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    iPhoneYouTubeViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet iPhoneYouTubeViewController *viewController;

@end

