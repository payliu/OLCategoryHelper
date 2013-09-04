//
// UIView+ViewFrameGeometry.h
//
// Created by Pay on 12/5/28.
// Copyright (c) 2012年 Octalord. The MIT License
//

#import <UIKit/UIKit.h>

CGPoint CGRectGetCenter(CGRect rect);
CGRect CGRectMoveToCenter(CGRect rect, CGPoint center);
CGRect CGRectCenteredInRect(CGRect rect, CGRect mainRect);

@interface UIView (ViewFrameGeometry)

@property CGPoint origin;
@property CGSize size;

@property (readonly) CGPoint bottomLeft;
@property (readonly) CGPoint bottomRight;
@property (readonly) CGPoint topRight;

@property CGFloat height;
@property CGFloat width;

@property CGFloat top;
@property CGFloat left;
@property CGFloat bottom;
@property CGFloat right;

- (void) moveBy:(CGPoint)delta;

- (void) scaleBy:(CGFloat)scaleFactor;

- (void) fitInSize:(CGSize)aSize;

@end
