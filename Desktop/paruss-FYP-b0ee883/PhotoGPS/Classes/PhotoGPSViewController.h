//
//  PhotoGPSViewController.h
//  PhotoGPS
//
//  Created by macminiserver on 2010/10/21.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreLocationController.h"
#include <netinet/in.h>
#import <Foundation/NSNetServices.h>

@interface PhotoGPSViewController : UIViewController < UINavigationControllerDelegate, UIImagePickerControllerDelegate ,CoreLocationControllerDelegate ,NSNetServiceBrowserDelegate >{
	UIImageView * theImageView;
	UIButton * sentPhoto;
	UIButton * takePhoto;
	
	CoreLocationController *CLController;
	IBOutlet UILabel *locLabel;
	NSString *gps;

}


@property (nonatomic, retain) IBOutlet UIImageView * theImageView;
@property (nonatomic, retain) IBOutlet UIButton * sentPhoto;
@property (nonatomic, retain) IBOutlet UIButton * takePhoto;
@property (nonatomic, retain) CoreLocationController *CLController;
@property (nonatomic, retain) NSURLConnection *connection;
@property (nonatomic, retain) NSString *gps;

- (IBAction)getPhoto:(id)sender;
- (IBAction)sentGPS:(id)sender;

- (NSURL *)smartURLForString:(NSString *)str;



@end

