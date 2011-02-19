#import <UIKit/UIKit.h>

@interface Animal : NSObject {
	NSString *name;
	NSString *description;
	NSString *imageURL;
}

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *description;
@property (nonatomic, retain) NSString *imageURL;

-(id)initWithName:(NSString *)n description:(NSString *)d url:(NSString *)u;

@end
