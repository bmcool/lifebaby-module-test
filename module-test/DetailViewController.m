//
//  DetailViewController.m
//  module-test
//
//  Created by Lin Chi-Cheng on 13/3/24.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "DetailViewController.h"

@implementation DetailViewController

-(void) incrNumSteps
{
    [super incrNumSteps];
    NSLog(@"steps = %d", self.numSteps);
}
@end
