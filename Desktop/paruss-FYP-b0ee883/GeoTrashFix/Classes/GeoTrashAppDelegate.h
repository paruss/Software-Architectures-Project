//
//  GeoTrashAppDelegate.h
//  GeoTrash
//
//  Created by Patrick Russell on 22/12/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GeoTrashViewController;

@interface GeoTrashAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    GeoTrashViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GeoTrashViewController *viewController;

@end

