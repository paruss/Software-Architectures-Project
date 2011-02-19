//
//  MapKit3AppDelegate.h
//  MapKit3
//
//  Created by Gavi Narra on 4/6/09.
//  Copyright ObjectGraph LLC 2009. All rights reserved.
//

@class MainViewController;

@interface MapKit3AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MainViewController *mainViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) MainViewController *mainViewController;

@end

