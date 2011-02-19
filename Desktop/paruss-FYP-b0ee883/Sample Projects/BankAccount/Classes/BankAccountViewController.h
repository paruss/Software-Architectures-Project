//
//  BankAccountViewController.h
//  BankAccount
//
//  Created by Patrick Russell on 10/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BankAccountViewController : UIViewController {
	UITextField *name;
	UITextField *password;
	UILabel *sLabel;

}
@property(retain, nonatomic) IBOutlet UITextField *name;
@property(retain, nonatomic) IBOutlet UITextField *password;
@property(retain, nonatomic) IBOutlet UILabel *sLabel;

-(IBAction) sliding: (id) sender;
-(IBAction) goAwayKeyboard: (id) sender;
-(IBAction) tapBackground: (id) sender;


@end

