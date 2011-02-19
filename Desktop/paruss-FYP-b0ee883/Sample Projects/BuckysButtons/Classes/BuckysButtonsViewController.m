//
//  BuckysButtonsViewController.m
//  BuckysButtons
//
//  Created by Patrick Russell on 10/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "BuckysButtonsViewController.h"

@implementation BuckysButtonsViewController
@synthesize labelsText;

-(IBAction) clicked:(id)sender{
	NSString *titleOfButton = [sender titleForState:UIControlStateNormal];
	NSString *newLabelText = [[NSString alloc]initWithFormat:@"%@", titleOfButton];
	labelsText.text = newLabelText;
	[newLabelText release];
}



- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	self.labelsText=nil;
}


- (void)dealloc {
    [super dealloc];
	[labelsText release];
}

@end
