//
// NSString+Append.m
// OLCategoryHelper
//
// Created by Pay Liu on 2015/6/12.
// Copyright (c) 2015年 Octalord Information Inc. All rights reserved.
//

#import "NSString+Append.h"

@implementation NSString (Append)

- (NSString *) stringByAppendingStrings:(id)first, ...
{
    NSString *result = @"";

    id eachArg;
    va_list alist;

    if (first == NULL)
        return @"";

    result = [result stringByAppendingString:first];

    va_start(alist, first);

    while ((eachArg = va_arg(alist, id)) != NULL)
        result = [result stringByAppendingString:eachArg];

    va_end(alist);

    return result;
}

@end
