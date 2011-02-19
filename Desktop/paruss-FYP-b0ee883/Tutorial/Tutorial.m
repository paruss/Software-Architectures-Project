#import <Foundation/Foundation.h>
// --------Interface----------
@interface Person: NSObject{
	int age;
	int weight;
}
-(void) print;
-(void) setAge: (int) a;	
-(void) setWeight: (int) w;
-(int) age;
-(int) weight;
@end
// -----------Implementation--------
@implementation Person
-(void) print {
	NSLog(@"I am %i years old and weigh %i pounds", age, weight);
}
-(void) setAge: (int) a{
	age=a;
}
-(void) setWeight: (int) w{
	weight=w;
}
-(int) age{
	return age;
}
-(int) weight{
	return weight;
}
@end
//----------main program ---------------
int main(int argc, char *argV[]){
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc]init];
	
	int i , userNum;
	NSLog(@"Enter a number and I will print it out");
	scanf("%i", &userNum);
	
	for(i = 1; i<=userNum; i++)
		NSLog(@"%i", i);
		
	
	[pool drain];
	return 0;
}