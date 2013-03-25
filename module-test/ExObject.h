//
//  ExObject.h
//  module-test
//
//  Created by Lin Chi-Cheng on 13/3/25.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ExObject : NSObject

@property (assign, nonatomic) NSInteger i;
@property (strong, nonatomic) NSString *s;
@property (strong, nonatomic) NSArray *a;
@property (strong, nonatomic) NSDictionary *d;

@end
