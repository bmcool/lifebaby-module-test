//
//  StoryboardXibExample.m
//  module-test
//
//  Created by Lin Chi-Cheng on 13/3/29.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "StoryboardXibExample.h"
#import "UIViewController+StoryboardExtend.h"

@interface StoryboardXibExample ()

@end

@implementation StoryboardXibExample

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self storyboardXibViewToXib];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
