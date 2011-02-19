//
//  PhotoGPSViewController.m
//  PhotoGPS
//
//  Created by macminiserver on 2010/10/21.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PhotoGPSViewController.h"

@implementation PhotoGPSViewController

//GPS坐標回傳的路徑
NSString *const GPSUpdateURLAddress = @"http://SomeAddress/gps_pos.php";
//照片上傳的路徑
NSString *const UploadPhotoAddress = @"http://www.skynet.ie/~paruss/iPhone/upload_file.php";

@synthesize theImageView,sentPhoto, takePhoto,CLController,connection,gps;

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



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	locLabel.font = [UIFont boldSystemFontOfSize:20];
	CLController = [[CoreLocationController alloc] init];
	CLController.delegate = self;
	[CLController.locMgr startUpdatingLocation];
    
	[super viewDidLoad];
}

- (void)locationUpdate:(CLLocation *)location {
	locLabel.text = [location description];
	self.gps = [[NSString alloc]init];
	self.gps = [location description];
}

- (void)locationError:(NSError *)error {
	locLabel.text = [error description];
}




-(IBAction) getPhoto:(id) sender{
	UIImagePickerController * picker = [[UIImagePickerController alloc] init];
	picker.delegate = self;
	
	if((UIButton *) sender == sentPhoto) {
		picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
	} else {
		picker.sourceType = UIImagePickerControllerSourceTypeCamera;
	}
	[self presentModalViewController:picker animated:YES];
}




- (IBAction)sentGPS:(id)sender{
	
	NSURL *url;
	NSMutableURLRequest * request;
	NSString *_urlString = GPSUpdateURLAddress;
	url = [self smartURLForString:_urlString];
	request = [NSMutableURLRequest requestWithURL:url];
	[request setHTTPMethod:@"POST"];
	
	//送GPS=[location description];
	NSString *post = [ NSString stringWithFormat:@"gps=%@",self.gps];
	NSData *postData = [ NSData dataWithBytes: [ post UTF8String ] length: [ post length ] ];
	[request setHTTPBody:postData];
	self.connection = [NSURLConnection connectionWithRequest:request delegate:self];
	
	
	NSData *photoData= UIImageJPEGRepresentation(self.theImageView.image, 1.0);
	if (photoData == nil) {
		NSLog(@"The photo is nothing !!!");
	}
	else {
		NSLog(@"Photo inside !!!!");
	}
	
}

//將拍的照片顯示到image view
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
	[picker dismissModalViewControllerAnimated:YES];
	self.theImageView.image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
}

- (IBAction)upload:(id)sender{
	
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (NSURL *)smartURLForString:(NSString *)str{
    NSURL *     result;
    NSString *  trimmedStr;
    NSRange     schemeMarkerRange;
    NSString *  scheme;
    
    assert(str != nil);
	
    result = nil;
    
    trimmedStr = [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if ( (trimmedStr != nil) && (trimmedStr.length != 0) ) {
        schemeMarkerRange = [trimmedStr rangeOfString:@"://"];
        
        if (schemeMarkerRange.location == NSNotFound) {
            result = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@", trimmedStr]];
        } else {
            scheme = [trimmedStr substringWithRange:NSMakeRange(0, schemeMarkerRange.location)];
            assert(scheme != nil);
            
            if ( ([scheme compare:@"http"  options:NSCaseInsensitiveSearch] == NSOrderedSame)
				|| ([scheme compare:@"https" options:NSCaseInsensitiveSearch] == NSOrderedSame) ) {
                result = [NSURL URLWithString:trimmedStr];
            } else {
                // It looks like this is some unsupported URL scheme.
            }
        }
    }
    return result;
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
	[[self parentViewController]dismissModalViewControllerAnimated:YES];
	[picker release];
}

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
	[theImageView release];
	[sentPhoto release];
	[takePhoto release];
	[CLController release];
	[connection release];
	[gps release];
    [super dealloc];
}

@end
