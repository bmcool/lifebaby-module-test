//
//  JSONAPIExample.m
//  module-test
//
//  Created by Lin Chi-Cheng on 13/3/27.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "JSONAPIExample.h"

#import "Http.h"
#import "JSONKit.h"

@interface JSONAPIExample ()

@end

@implementation JSONAPIExample

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
	
    NSString *response = [Http getWithUrl:@"http://openweathermap.org/data/2.1/find/city?lat=25.04&lon=121.56&cnt=2" encoding:NSUTF8StringEncoding];
    
    id json = [response objectFromJSONString];
    NSLog(@"json = %@", json);
    
    // JSONObject like NSDictionary
    NSLog(@"message = %@", [json objectForKey:@"message"]);
    
    // JSONArray like NSArray
    NSLog(@"list count = %d", [[json objectForKey:@"list"] count]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
