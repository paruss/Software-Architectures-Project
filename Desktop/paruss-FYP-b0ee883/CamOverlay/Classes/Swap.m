    //
//  Swap.m
//  CamOverlay
//
//  Created by Patrick Russell on 11/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Swap.h"
#import "CamView.h"
#import "Title.h"


@implementation Swap
@synthesize camView;
@synthesize title;

-(void) viewDidLoad{
	Title *title = [[title alloc]initWithNibName:@"Title" bundle:nil];
	self.Title = title;
	
	[self.view insertSubview:title.view atIndex:0];
	[title release];
	[super viewDidLoad];
}

-(IBAction) pressMe: (id)sender{
	if (self.camView.view.subview==nil){
		if (self.pressMe == nil){
			CamView *cam = [[CamView alloc]initWithNibName:@"CamView" bundle:nil];
			self.camView = cam;
			[cam release];
		}
		[title.view removeFromSuperview];
		[self.view insertSubview:camView.view atIndex:0];
	}
		}
	}

}
- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	if (self.title.view.superview==nil) {
		self.title=nil;
	else {
		self.camView=nil;
	}

	}
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
	[title release];
	[camView release];
}


@end
