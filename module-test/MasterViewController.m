//
//  MasterViewController.m
//  module-test
//
//  Created by Lin Chi-Cheng on 13/3/24.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "MasterViewController.h"

#import "ShakeExample.h"
#import "MPSecureUserDefaultsExample.h"
#import "PropertyListingExample.h"

@interface MasterViewController () {
    NSMutableArray *_objects;
}
@end

@implementation MasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _objects = [NSMutableArray new];
    
    ShakeExample *pedometerExampleViewController = [ShakeExample new];
    [_objects addObject:[pedometerExampleViewController description]];
    
    MPSecureUserDefaultsExample *mpSecureUserDefaultsExampleViewController = [MPSecureUserDefaultsExample new];
    [_objects addObject:[mpSecureUserDefaultsExampleViewController description]];
    
    PropertyListingExample *propertyListingExampleViewController = [PropertyListingExample new];
    [_objects addObject:[propertyListingExampleViewController description]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = _objects[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        ShakeExample *pedometerExample = [ShakeExample new];
        [self.navigationController pushViewController:pedometerExample animated:YES];
    } else if (indexPath.row == 1) {
        MPSecureUserDefaultsExample *mpSecureUserDefaultsExample = [MPSecureUserDefaultsExample new];
        [self.navigationController pushViewController:mpSecureUserDefaultsExample animated:YES];
    } else if (indexPath.row == 2) {
        PropertyListingExample *propertyListingExample = [PropertyListingExample new];
        [self.navigationController pushViewController:propertyListingExample animated:YES];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
//        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        NSDate *object = _objects[indexPath.row];
//        [segue destinationViewController];
    }
}

@end
