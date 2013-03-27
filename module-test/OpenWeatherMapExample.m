//
//  OpenWeatherMapExampleViewController.m
//  module-test
//
//  Created by Lin Chi-Cheng on 13/3/28.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "OpenWeatherMapExample.h"

#import "NSObject+PropertyListing.h"
#import "OpenWeatherMap.h"

@interface OpenWeatherMapExample ()

@end

@implementation OpenWeatherMapExample

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
    
    OpenWeatherMap *openWeatherMap = [OpenWeatherMap sharedInstance];
    
    [openWeatherMap updateWithLatitude:25.04 Longitude:121.56];
    
    NSLog(@"station = %@", [openWeatherMap.station properties_aps]);
    NSLog(@"weather = %@", [openWeatherMap.station.weather properties_aps]);
    
    [self.weatherIconImageView setImage:openWeatherMap.station.weather.iconImage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setWeatherIconImageView:nil];
    [super viewDidUnload];
}
@end
