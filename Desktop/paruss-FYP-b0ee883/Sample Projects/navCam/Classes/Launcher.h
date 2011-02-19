//
//  Launcher.h
//  navCam
//
//  Created by Patrick Russell on 12/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Overlay;

@interface Launcher : NSObject {
	Overlay *overlay;

}

@property (retain, nonatomic) Overlay *overlay;
-(IBAction) loadCam: (id)sender;

@end
