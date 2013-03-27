//
//  WeatherExample.m
//  module-test
//
//  Created by Lin Chi-Cheng on 13/3/25.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "LocationExample.h"

@interface LocationExample ()

@end

@implementation LocationExample

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)locationUpdate:(CLLocation *)location distance:(CLLocationDistance)distance timeInterval:(NSTimeInterval)timeInterval
{
    NSLog(@"latitude = %f", location.coordinate.latitude);
    NSLog(@"longitude = %f", location.coordinate.longitude);
    NSLog(@"altitude = %f", location.altitude);
    
    NSLog(@"speed = %f m/s", location.speed);
    
    NSLog(@"distance = %f meter", distance);
    
    NSLog(@"timeInterval = %f sec", timeInterval);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
