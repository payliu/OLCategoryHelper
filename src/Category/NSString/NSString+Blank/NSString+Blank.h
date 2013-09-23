//
// NSString+Blank.h
// OLCategoryHelper
//
// Created by Pay Liu on 13/9/14.
// Copyright (c) 2013年 Octalord Information Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Blank)

/**
 *    [nil isBlank]         == YES
 *    [@"" isBlank]         == YES
 *    [@" " isBlank]        == YES
 *    [@"bob" isBlank]      == NO
 *    [@"  bob   " isBlank] == NO
 *
 *  @return YES or NO
 */
- (BOOL) isBlank;

/**
 *    [nil isNotBlank]         == NO
 *    [@"" isNotBlank]         == NO
 *    [@" " isNotBlank]        == NO
 *    [@"bob" isNotBlank]      == YES
 *    [@"  bob   " isNotBlank] == YES
 *
 *  @return YES or NO
 */
- (BOOL) isNotBlank;

/**
 *    [nil isEmpty]         == YES
 *    [@"" isEmpty]         == YES
 *    [@" " isEmpty]        == NO
 *    [@"bob" isEmpty]      == NO
 *    [@"  bob   " isEmpty] == NO
 *
 *  @return YES or NO
 */
- (BOOL) isEmpty;

/**
 *    [nil isNotEmpty]         == NO
 *    [@"" isNotEmpty]         == NO
 *    [@" " isNotEmpty]        == YES
 *    [@"bob" isNotEmpty]      == YES
 *    [@"  bob   " isNotEmpty] == YES
 *
 *  @return YES or NO
 */
- (BOOL) isNotEmpty;

@end
