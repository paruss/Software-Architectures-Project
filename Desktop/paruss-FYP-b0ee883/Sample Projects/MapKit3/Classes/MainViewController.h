#import "FlipsideViewController.h"
#import "ParkPlaceMark.h"
#import <MapKit/MapKit.h>
#import <MapKit/MKReverseGeocoder.h>
#import <CoreLocation/CoreLocation.h>

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate, MKMapViewDelegate, MKReverseGeocoderDelegate, CLLocationManagerDelegate> {
	MKMapView *mapView;
	MKPlacemark *mPlacemark;
	CLLocationCoordinate2D location;
	IBOutlet UIButton *mStoreLocationButton;
	
}

- (IBAction)showInfo;
- (IBAction)storeLocationInfo:(id) sender;

@end
