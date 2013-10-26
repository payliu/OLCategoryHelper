//
// NSString+Blank.h
// OLCategoryHelper
//
// Created by Pay Liu on 13/9/14.
// Copyright (c) 2013年 Octalord Information Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *    NSStringIsBlank(nil)          == YES
 *    NSStringIsBlank(@"")          == YES
 *    NSStringIsBlank(@" ")         == YES
 *    NSStringIsBlank(@"bob")       == NO
 *    NSStringIsBlank(@"  bob   ")  == NO
 *
 *  @param stringValue tested string
 *
 *  @return BOOL YES or NO
 */
FOUNDATION_EXPORT BOOL NSStringIsBlank(NSString *stringValue);

/**
 *    NSStringIsBlank(nil)          == @"YES"
 *    NSStringIsBlank(@"")          == @"YES"
 *    NSStringIsBlank(@" ")         == @"YES"
 *    NSStringIsBlank(@"bob")       == @"NO"
 *    NSStringIsBlank(@"  bob   ")  == @"NO"
 *
 *  @param stringValue tested string
 *
 *  @return NSString @"YES" or @"NO"
 */
FOUNDATION_EXPORT NSString* NSStringIsBlankString(NSString *stringValue);

/**
 *    NSStringIsNotBlank(nil)           == NO
 *    NSStringIsNotBlank(@"")           == NO
 *    NSStringIsNotBlank(@" ")          == NO
 *    NSStringIsNotBlank(@"bob")        == YES
 *    NSStringIsNotBlank(@"  bob   ")   == YES
 *
 *  @param stringValue tested string
 *
 *  @return BOOL YES or NO
 */
FOUNDATION_EXPORT BOOL NSStringIsNotBlank(NSString *stringValue);

/**
 *    NSStringIsNotBlank(nil)           == @"NO"
 *    NSStringIsNotBlank(@"")           == @"NO"
 *    NSStringIsNotBlank(@" ")          == @"NO"
 *    NSStringIsNotBlank(@"bob")        == @"YES"
 *    NSStringIsNotBlank(@"  bob   ")   == @"YES"
 *
 *  @param stringValue tested string
 *
 *  @return NSString @"YES" or @"NO"
 */
FOUNDATION_EXPORT NSString* NSStringIsNotBlankString(NSString *stringValue);

/**
 *    NSStringIsEmpty(nil)          == YES
 *    NSStringIsEmpty(@"")          == YES
 *    NSStringIsEmpty(@" ")         == NO
 *    NSStringIsEmpty(@"bob")       == NO
 *    NSStringIsEmpty(@"  bob   ")  == NO
 *
 *  @param stringValue tested string
 *
 *  @return BOOL YES or NO
 */
FOUNDATION_EXPORT BOOL NSStringIsEmpty(NSString *stringValue);

/**
 *    NSStringIsEmpty(nil)          == @"YES"
 *    NSStringIsEmpty(@"")          == @"YES"
 *    NSStringIsEmpty(@" ")         == @"NO"
 *    NSStringIsEmpty(@"bob")       == @"NO"
 *    NSStringIsEmpty(@"  bob   ")  == @"NO"
 *
 *  @param stringValue tested string
 *
 *  @return NSString @"YES" or @"NO"
 */
FOUNDATION_EXPORT NSString* NSStringIsEmptyString(NSString *stringValue);

/**
 *    NSStringIsNotEmpty(nil)           == NO
 *    NSStringIsNotEmpty(@"")           == NO
 *    NSStringIsNotEmpty(@" ")          == YES
 *    NSStringIsNotEmpty(@"bob")        == YES
 *    NSStringIsNotEmpty(@"  bob   ")   == YES
 *
 *  @param stringValue tested string
 *
 *  @return BOOL YES or NO
 */
FOUNDATION_EXPORT BOOL NSStringIsNotEmpty(NSString *stringValue);

/**
 *    NSStringIsNotEmpty(nil)           == @"NO"
 *    NSStringIsNotEmpty(@"")           == @"NO"
 *    NSStringIsNotEmpty(@" ")          == @"YES"
 *    NSStringIsNotEmpty(@"bob")        == @"YES"
 *    NSStringIsNotEmpty(@"  bob   ")   == @"YES"
 *
 *  @param stringValue tested string
 *
 *  @return NSString @"YES" or @"NO"
 */
FOUNDATION_EXPORT NSString* NSStringIsNotEmptyString(NSString *stringValue);

@interface NSString (Blank)

@end
