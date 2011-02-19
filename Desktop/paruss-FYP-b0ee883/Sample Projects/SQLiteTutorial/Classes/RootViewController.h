#import <UIKit/UIKit.h>
#import "AnimalViewController.h"

@interface RootViewController : UITableViewController {
	AnimalViewController *animalView;
}

@property(nonatomic, retain) AnimalViewController *animalView; 

@end