//
// NSString+Blank.m
// OLCategoryHelper
//
// Created by Pay Liu on 13/9/14.
// Copyright (c) 2013年 Octalord Information Inc. The MIT License
//

#import "NSString+Blank.h"
#import "NSString+BOOL.h"

BOOL NSStringIsBlank(NSString *stringValue)
{
    BOOL blank = NO;

    if (stringValue.length == 0) {

        blank = YES;

    } else if ([stringValue stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]].length == 0) {

        blank = YES;
    }

    return blank;
}

NSString* NSStringIsBlankString(NSString *stringValue)
{
    return NSStringFromBOOL(NSStringIsBlank(stringValue));
}

BOOL NSStringIsNotBlank(NSString *stringValue)
{
    return !NSStringIsBlank(stringValue);
}

NSString* NSStringIsNotBlankString(NSString *stringValue)
{
    return NSStringFromBOOL(NSStringIsNotBlank(stringValue));
}

BOOL NSStringIsEmpty(NSString *stringValue)
{
    BOOL empty = NO;

    if (stringValue.length == 0) {

        empty = YES;
    }

    return empty;
}

NSString* NSStringIsEmptyString(NSString *stringValue)
{
    return NSStringFromBOOL(NSStringIsEmpty(stringValue));
}

BOOL NSStringIsNotEmpty(NSString *stringValue)
{
    return !(NSStringIsEmpty(stringValue));
}

NSString* NSStringIsNotEmptyString(NSString *stringValue)
{
    return NSStringFromBOOL(NSStringIsNotEmpty(stringValue));
}

@implementation NSString (Blank)

+ (BOOL) isBlank:(NSString *)stringValue
{
    return NSStringIsBlank(stringValue);
}

+ (NSString *) isBlankString:(NSString *)stringValue
{
    return NSStringIsBlankString(stringValue);
}

+ (BOOL) isNotBlank:(NSString *)stringValue
{
    return NSStringIsNotBlank(stringValue);
}

+ (NSString *) isNotBlankString:(NSString *)stringValue
{
    return NSStringIsNotBlankString(stringValue);
}

+ (BOOL) isEmpty:(NSString *)stringValue
{
    return NSStringIsEmpty(stringValue);
}

+ (NSString *) isEmptyString:(NSString *)stringValue
{
    return NSStringIsEmptyString(stringValue);
}

+ (BOOL) isNotEmpty:(NSString *)stringValue
{
    return NSStringIsNotEmpty(stringValue);
}

+ (NSString *) isNotEmptyString:(NSString *)stringValue
{
    return NSStringIsNotEmptyString(stringValue);
}

@end
