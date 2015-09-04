//
// UISplitViewController+ToggleMasterView.m
// OLCategoryHelper
//
// Created by Pay Liu on 9/4/15.
// Copyright (c) 2015 Octalord Information Inc. All rights reserved.
//

#import "UISplitViewController+ToggleMasterView.h"

@implementation UISplitViewController (ToggleMasterView)

/**
 *  http://stackoverflow.com/questions/27243158/hiding-the-master-view-controller-with-uisplitviewcontroller-in-ios8
 *  http://stackoverflow.com/questions/2700453/how-to-hide-master-view-in-uisplitviewcontroller-in-ipad
 */
- (void) toggleMasterView
{
    UIBarButtonItem *button = self.displayModeButtonItem;

    [[UIApplication sharedApplication] sendAction:button.action
                                               to:button.target
                                             from:nil
                                         forEvent:nil];
}

@end
