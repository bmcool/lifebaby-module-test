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

- (void)locationUpdate:(CLLocation *)location distance:(CLLocationDistance)distance
{
    NSLog(@"latitude = %f", location.coordinate.latitude);
    NSLog(@"longitude = %f", location.coordinate.longitude);
    NSLog(@"altitude = %f", location.altitude);
    
    // meter/sec
    NSLog(@"speed = %f", location.speed);
    
    // meter
    NSLog(@"distance = %f", distance);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
