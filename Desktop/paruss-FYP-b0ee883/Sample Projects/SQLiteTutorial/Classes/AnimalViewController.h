#import <UIKit/UIKit.h>

@interface AnimalViewController : UIViewController {
	IBOutlet UITextView *animalDesciption;
	IBOutlet UIImageView *animalImage;
}

@property (nonatomic, retain) IBOutlet UITextView *animalDesciption;
@property (nonatomic, retain) IBOutlet UIImageView *animalImage;

@end