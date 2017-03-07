//
//  ViewController.m
//  UserLocation
//
//  Created by Suresh on 2/20/17.
//  Copyright © 2017 Suresh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    CLLocationManager *locationManager;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}
-(void)viewDidAppear:(BOOL)animated{
    locationManager = [CLLocationManager new];
    [locationManager requestAlwaysAuthorization];
    locationManager.delegate = self;
    [locationManager startUpdatingLocation];
    
    NSLog(@"latitude is : %f and longitude is :%f",locationManager.location.coordinate.latitude,locationManager.location.coordinate.longitude);
    
    CLGeocoder *geocoder = [CLGeocoder new];
    [geocoder reverseGeocodeLocation:locationManager.location completionHandler:^(NSArray<CLPlacemark *> *  placemarks, NSError *  error) {
        NSLog(@"%@",[placemarks objectAtIndex:0]);
    }];
    
    
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{

    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    
    
}

@end
