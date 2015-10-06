//
// NSArray+JSON.m
// OLCategoryHelper
//
// Created by Pay Liu on 10/5/15.
// Copyright © 2015 Octalord Information Inc. All rights reserved.
//

#import "NSArray+JSON.h"

@implementation NSArray (JSON)

- (NSString *) jsonString
{
    NSError *error = nil;

    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:0
                                                         error:&error];

    if (jsonData == nil) {

        NSLog(@"fail to get JSON from arry: %@, error: %@", self, error);

        return nil;
    }

    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];

    return [jsonString autorelease];
}

+ (NSArray *) arrayWithJSON:(NSString *)json
{
    NSError *error = nil;

    NSData *jsonData = [json dataUsingEncoding:NSUTF8StringEncoding];

    NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers | NSJSONReadingAllowFragments error:&error];

    if (jsonArray == nil) {

        NSLog(@"fail to get array from JSON: %@, error: %@", json, error);

        return nil;
    }

    return jsonArray;
}

@end
