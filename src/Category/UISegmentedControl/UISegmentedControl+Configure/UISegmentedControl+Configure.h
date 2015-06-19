//
// UISegmentedControl+Configure.h
// OLCategoryHelper
//
// Created by Pay Liu on 2015/6/18.
// Copyright (c) 2015年 Octalord Information Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UISegmentedControl (Configure)

/**
 *  dynamic reset segement;
 *
 *  @param segments contain the title of segement
 */
- (void) configureSegments:(NSArray *)segments;

@end
