#import "RootViewController.h"
#import "SQLiteTutorialAppDelegate.h"
#import "Animal.h"

@implementation RootViewController
@synthesize animalView;

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    SQLiteTutorialAppDelegate *appDelegate = (SQLiteTutorialAppDelegate *)[[UIApplication sharedApplication] delegate];
	return appDelegate.animals.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
    static NSString *CellIdentifier = @"Cell";
	
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
    }
	
    // Set up the cell
    SQLiteTutorialAppDelegate *appDelegate = (SQLiteTutorialAppDelegate *)[[UIApplication sharedApplication] delegate];
	Animal *animal = (Animal *)[appDelegate.animals objectAtIndex:indexPath.row];
	
	[cell setText:animal.name];
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic -- create and push a new view controller
	SQLiteTutorialAppDelegate *appDelegate = (SQLiteTutorialAppDelegate *)[[UIApplication sharedApplication] delegate];
	Animal *animal = (Animal *)[appDelegate.animals objectAtIndex:indexPath.row];
	
	if(self.animalView == nil) {
		AnimalViewController *viewController = [[AnimalViewController alloc] initWithNibName:@"AnimalViewController" bundle:nil];
		self.animalView = viewController;
		[viewController release];
	}
	
	// Setup the animation
	[self.navigationController pushViewController:self.animalView animated:YES];
	// Set the title of the view to the animal's name
	self.animalView.title = [animal name];
	// Set the description field to the animals description
	[self.animalView.animalDesciption setText:[animal description]];
	// Load the animals image into a NSData boject and then assign it to the UIImageView
	NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:[animal imageURL]]];
	UIImage *animalImage = [[UIImage alloc] initWithData:imageData cache:YES];
	self.animalView.animalImage.image = animalImage;
	
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Uncomment the following line to add the Edit button to the navigation bar.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
	
	self.title = @"My Zoo";
}


/*
// Override to support editing the list
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:YES];
    }   
    if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/


/*
// Override to support conditional editing of the list
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


/*
// Override to support rearranging the list
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


/*
// Override to support conditional rearranging of the list
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
}
*/

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
}


@end

