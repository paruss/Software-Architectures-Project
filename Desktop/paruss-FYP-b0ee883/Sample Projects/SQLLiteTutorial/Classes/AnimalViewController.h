//
//  AnimalViewController.h
//  SQLLiteTutorial
//
//  Created by Patrick Russell on 03/11/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AnimalViewController : UIViewController {
	IBOutlet UITextView *animalDesciption;
	IBOutlet UIImageView *animalImage;
}

@property (nonatomic, retain) IBOutlet UITextView *animalDesciption;
@property (nonatomic, retain) IBOutlet UIImageView *animalImage;

@end