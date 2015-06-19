//
// UISegmentedControl+Configure.m
// OLCategoryHelper
//
// Created by Pay Liu on 2015/6/18.
// Copyright (c) 2015年 Octalord Information Inc. All rights reserved.
//

#import "UISegmentedControl+Configure.h"

@implementation UISegmentedControl (Configure)

- (void) configureSegments:(NSArray *)segments
{
    [self removeAllSegments];

    for (NSString *segment in segments) {
        [self insertSegmentWithTitle:segment atIndex:self.numberOfSegments animated:NO];
    }
}

@end
