//
//  PhotoGPSAppDelegate.h
//  PhotoGPS
//
//  Created by macminiserver on 2010/10/21.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PhotoGPSViewController;

@interface PhotoGPSAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PhotoGPSViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PhotoGPSViewController *viewController;

@end

