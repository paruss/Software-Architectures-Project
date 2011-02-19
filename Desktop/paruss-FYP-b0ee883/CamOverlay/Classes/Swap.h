//
//  Swap.h
//  CamOverlay
//
//  Created by Patrick Russell on 11/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CamView;
@class Title;


@interface Swap : UIViewController {
	CamView *camView;
	Title *title;
	

}

@property (retain, nonatomic) CamView *camView;
@property (retain, nonatomic) Title *title;

-(IBAction) pressMe: (id)sender;

@end
