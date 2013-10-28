//
// NSString+Blank.h
// OLCategoryHelper
//
// Created by Pay Liu on 13/9/14.
// Copyright (c) 2013年 Octalord Information Inc. The MIT License
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
 *    NSStringIsBlankString(nil)          isEqualToString:@"YES"
 *    NSStringIsBlankString(@"")          isEqualToString:@"YES"
 *    NSStringIsBlankString(@" ")         isEqualToString:@"YES"
 *    NSStringIsBlankString(@"bob")       isEqualToString:@"NO"
 *    NSStringIsBlankString(@"  bob   ")  isEqualToString:@"NO"
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
 *    NSStringIsNotBlankString(nil)           isEqualToString:@"NO"
 *    NSStringIsNotBlankString(@"")           isEqualToString:@"NO"
 *    NSStringIsNotBlankString(@" ")          isEqualToString:@"NO"
 *    NSStringIsNotBlankString(@"bob")        isEqualToString:@"YES"
 *    NSStringIsNotBlankString(@"  bob   ")   isEqualToString:@"YES"
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
 *    NSStringIsEmptyString(nil)          isEqualToString:@"YES"
 *    NSStringIsEmptyString(@"")          isEqualToString:@"YES"
 *    NSStringIsEmptyString(@" ")         isEqualToString:@"NO"
 *    NSStringIsEmptyString(@"bob")       isEqualToString:@"NO"
 *    NSStringIsEmptyString(@"  bob   ")  isEqualToString:@"NO"
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
 *    NSStringIsNotEmptyString(nil)           isEqualToString:@"NO"
 *    NSStringIsNotEmptyString(@"")           isEqualToString:@"NO"
 *    NSStringIsNotEmptyString(@" ")          isEqualToString:@"YES"
 *    NSStringIsNotEmptyString(@"bob")        isEqualToString:@"YES"
 *    NSStringIsNotEmptyString(@"  bob   ")   isEqualToString:@"YES"
 *
 *  @param stringValue tested string
 *
 *  @return NSString @"YES" or @"NO"
 */
FOUNDATION_EXPORT NSString* NSStringIsNotEmptyString(NSString *stringValue);

@interface NSString (Blank)

/**
 *    [NSString isBlank:nil]          == YES
 *    [NSString isBlank:@""]          == YES
 *    [NSString isBlank:@" "]         == YES
 *    [NSString isBlank:@"bob"]       == NO
 *    [NSString isBlank:@"  bob   "]  == NO
 *
 *  @param stringValue tested string
 *
 *  @return BOOL YES or NO
 */
+ (BOOL) isBlank:(NSString *)stringValue;

/**
 *    [NSString isBlankString:nil]          isEqualToString:@"YES"
 *    [NSString isBlankString:@""]          isEqualToString:@"YES"
 *    [NSString isBlankString:@" "]         isEqualToString:@"YES"
 *    [NSString isBlankString:@"bob"]       isEqualToString:@"NO"
 *    [NSString isBlankString:@"  bob   "]  isEqualToString:@"NO"
 *
 *  @param stringValue tested string
 *
 *  @return NSString @"YES" or @"NO"
 */
+ (NSString *) isBlankString:(NSString *)stringValue;

/**
 *    [NSString isNotBlank:nil]          == NO
 *    [NSString isNotBlank:@""]          == NO
 *    [NSString isNotBlank:@" "]         == NO
 *    [NSString isNotBlank:@"bob"]       == YES
 *    [NSString isNotBlank:@"  bob   "]  == YES
 *
 *  @param stringValue tested string
 *
 *  @return BOOL YES or NO
 */
+ (BOOL) isNotBlank:(NSString *)stringValue;

/**
 *    [NSString isNotBlankString:nil]          isEqualToString:@"NO"
 *    [NSString isNotBlankString:@""]          isEqualToString:@"NO"
 *    [NSString isNotBlankString:@" "]         isEqualToString:@"NO"
 *    [NSString isNotBlankString:@"bob"]       isEqualToString:@"YES"
 *    [NSString isNotBlankString:@"  bob   "]  isEqualToString:@"YES"
 *
 *  @param stringValue tested string
 *
 *  @return NSString @"YES" or @"NO"
 */
+ (NSString *) isNotBlankString:(NSString *)stringValue;

/**
 *    [NSString isEmpty:nil]          == YES
 *    [NSString isEmpty:@""]          == YES
 *    [NSString isEmpty:@" "]         == NO
 *    [NSString isEmpty:@"bob"]       == NO
 *    [NSString isEmpty:@"  bob   "]  == NO
 *
 *  @param stringValue tested string
 *
 *  @return BOOL YES or NO
 */
+ (BOOL) isEmpty:(NSString *)stringValue;

/**
 *    [NSString isEmptyString:nil]          isEqualToString:@"YES"
 *    [NSString isEmptyString:@""]          isEqualToString:@"YES"
 *    [NSString isEmptyString:@" "]         isEqualToString:@"NO"
 *    [NSString isEmptyString:@"bob"]       isEqualToString:@"NO"
 *    [NSString isEmptyString:@"  bob   "]  isEqualToString:@"NO"
 *
 *  @param stringValue tested string
 *
 *  @return NSString @"YES" or @"NO"
 */
+ (NSString *) isEmptyString:(NSString *)stringValue;

/**
 *    [NSString isNotEmpty:nil]          == NO
 *    [NSString isNotEmpty:@""]          == NO
 *    [NSString isNotEmpty:@" "]         == YES
 *    [NSString isNotEmpty:@"bob"]       == YES
 *    [NSString isNotEmpty:@"  bob   "]  == YES
 *
 *  @param stringValue tested string
 *
 *  @return BOOL YES or NO
 */
+ (BOOL) isNotEmpty:(NSString *)stringValue;

/**
 *    [NSString isNotEmptyString:nil]          isEqualToString:@"NO"
 *    [NSString isNotEmptyString:@""]          isEqualToString:@"NO"
 *    [NSString isNotEmptyString:@" "]         isEqualToString:@"YES"
 *    [NSString isNotEmptyString:@"bob"]       isEqualToString:@"YES"
 *    [NSString isNotEmptyString:@"  bob   "]  isEqualToString:@"YES"
 *
 *  @param stringValue tested string
 *
 *  @return NSString @"YES" or @"NO"
 */
+ (NSString *) isNotEmptyString:(NSString *)stringValue;

@end
