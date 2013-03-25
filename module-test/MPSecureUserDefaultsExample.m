//
//  MPSecureUserDefaultsExample.m
//  module-test
//
//  Created by Lin Chi-Cheng on 13/3/25.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "MPSecureUserDefaultsExample.h"

#import "NSUserDefaults+MPSecureUserDefaults.h"

@interface MPSecureUserDefaultsExample ()

@end

@implementation MPSecureUserDefaultsExample

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
    @try {
        // should put it at AppDelegate didFinishLaunchingWithOptions, this is just for example
        [NSUserDefaults setSecret:@"shh, this is secret!"];
    }
    @catch (NSException *exception) {
        // you can't setSecret again, put it at AppDelegate didFinishLaunchingWithOptions
    }
    
    // Write secure user defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setSecureBool:YES forKey:@"IsRegistered"];
    
    // Read secure user defaults
    BOOL valid = NO;
    BOOL registered = [defaults secureBoolForKey:@"IsRegistered" valid:&valid];
    NSLog(@"registered = %d", registered);
    
    if (!valid) {
        NSLog(@"not valid");
    } else {
        NSLog(@"valid");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
