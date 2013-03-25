//
//  PropertyListingExample.m
//  module-test
//
//  Created by Lin Chi-Cheng on 13/3/25.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "PropertyListingExample.h"
#import "NSObject+PropertyListing.h"

#import "ExObject.h"

@interface PropertyListingExample ()

@end

@implementation PropertyListingExample

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
    ExObject *o = [ExObject alloc];
    o.i = 123;
    o.s = @"456";
    o.a = [NSArray arrayWithObjects:@"777", @"888", nil];
    o.d = [NSDictionary dictionaryWithObjectsAndKeys:@"aaa", @"bbb", @"ccc", @"ddd", nil];
    
    NSLog(@"properties_aps = %@", [o properties_aps]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
