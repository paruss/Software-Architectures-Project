//
//  Bacon2ViewController.h
//  Bacon2
//
//  Created by Patrick Russell on 11/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Bacon2ViewController : UIViewController <UIActionSheetDelegate>{
	UISwitch *leftSwitch;
	UISwitch *rightSwitch;
	UIButton *button;

}
@property(nonatomic, retain) IBOutlet UISwitch *leftSwitch;
@property(nonatomic, retain) IBOutlet UISwitch *rightSwitch;
@property(nonatomic, retain) IBOutlet UIButton *button;

-(IBAction) mainControlSwitched:(id)sender;
-(IBAction) switchChanged:(id)sender;
-(IBAction) buttonPressed;

@end

