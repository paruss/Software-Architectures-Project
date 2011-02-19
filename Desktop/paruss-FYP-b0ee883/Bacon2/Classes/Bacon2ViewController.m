//
//  Bacon2ViewController.m
//  Bacon2
//
//  Created by Patrick Russell on 11/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Bacon2ViewController.h"

@implementation Bacon2ViewController

@synthesize leftSwitch;
@synthesize rightSwitch;
@synthesize button;

-(IBAction) mainControlSwitched:(id)sender{
	if ([sender selectedSegmentIndex]==0) {
		leftSwitch.hidden=NO;
		leftSwitch.hidden=NO;
		button.hidden=YES;
	}
	else {
		leftSwitch.hidden=YES;
		leftSwitch.hidden=YES;
		button.hidden=NO;
		}

}


-(IBAction) switchChanged:(id)sender{
	UISwitch *mySwitch = (UISwitch *) sender;
	BOOL yn = mySwitch.isOn;
	[leftSwitch setOn:yn animated:YES];
	[rightSwitch setOn:yn animated:YES];

}
-(IBAction) buttonPressed{
	UIActionSheet *actionSheet = [[UIActionSheet alloc]
								  initWithTitle:@"Want to see an alert?" 
								  delegate:self
								  cancelButtonTitle: @"cancel" 
								  destructiveButtonTitle: @"Yea, lets see it" 
								  otherButtonTitles:nil];
	[actionSheet showInView:self.view];
	[actionSheet release];

}

-(void)actionSheet: (UIActionSheet *) actionSheet willDismissWithButtonIndex:(NSInteger) buttonIndex{
	if (buttonIndex != [actionSheet cancelButtonIndex]) {
		UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"OK, here it is" 
													  message: @"bacon is good ummm" 
													  delegate:self 
													  cancelButtonTitle:@"Done"
													  otherButtonTitles:nil];
		[alert show];
		[alert release];
	}
}




/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[leftSwitch release];
	[rightSwitch release];
	[button release];
    [super dealloc];
}

@end
