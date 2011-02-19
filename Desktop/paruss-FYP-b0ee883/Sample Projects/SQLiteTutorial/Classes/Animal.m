#import "Animal.h"

@implementation Animal
@synthesize name, description, imageURL;

-(id)initWithName:(NSString *)n description:(NSString *)d url:(NSString *)u {
	self.name = n;
	self.description = d;
	self.imageURL = u;
	return self;
}
@end
