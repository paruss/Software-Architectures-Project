//
//  BankAccountAppDelegate.h
//  BankAccount
//
//  Created by Patrick Russell on 10/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BankAccountViewController;

@interface BankAccountAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    BankAccountViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet BankAccountViewController *viewController;

@end

