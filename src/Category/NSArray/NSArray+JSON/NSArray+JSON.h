//
// NSArray+JSON.h
// OLCategoryHelper
//
// Created by Pay Liu on 10/5/15.
// Copyright © 2015 Octalord Information Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (JSON)

- (NSString *) jsonString;

+ (NSArray *) arrayWithJSON:(NSString *)json;

@end
