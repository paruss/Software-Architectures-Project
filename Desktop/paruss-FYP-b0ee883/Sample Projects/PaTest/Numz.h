//
//  Numz.h
//  PaTest
//
//  Created by Patrick Russell on 10/10/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Numz : NSObject {
	int num1;
	int num2;
	int answer;

}
-(void) setNumbers: (int) a:(int) b;
-(void) add;
-(void) print;
@end
