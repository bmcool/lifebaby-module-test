//
//  DetailViewController.m
//  module-test
//
//  Created by Lin Chi-Cheng on 13/3/24.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "ShakeExample.h"

@implementation ShakeExample

-(void) incrShakeCount
{
    [super incrShakeCount];
    NSLog(@"steps = %d", self.shakeCount);
}

@end
