//
// UINavigationController+OrientationSettings.m
// EmsDoctor
//
// Created by Pay Liu on 2013/10/28.
// Copyright (c) 2013年 Octalord Information Inc. The MIT License
//
// http://stackoverflow.com/questions/12260261/shouldautorotatetointerfaceorientation-not-being-called-in-ios-6
// http://stackoverflow.com/questions/12577879/shouldautorotatetointerfaceorientation-is-not-working-in-ios-6
//

#import "UINavigationController+OrientationSettings.h"

@implementation UINavigationController (OrientationSettings)

- (BOOL) shouldAutorotate
{
    return [[self.viewControllers lastObject] shouldAutorotate];
}

- (NSUInteger) supportedInterfaceOrientations
{
    return [[self.viewControllers lastObject] supportedInterfaceOrientations];
}

- (UIInterfaceOrientation) preferredInterfaceOrientationForPresentation
{
    return [[self.viewControllers lastObject] preferredInterfaceOrientationForPresentation];
}

@end
