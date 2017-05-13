//
//  NSString+MD5.m
//  OLCategoryHelper
//
//  Created by Pay Liu on 2017-05-09.
//  Copyright © 2017 Octalord Information Inc. All rights reserved.
//

#import "NSString+MD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (MD5)

- (NSString *)md5
{
    const char *cStr = [self UTF8String];

    unsigned char digest[CC_MD5_DIGEST_LENGTH];

    CC_MD5( cStr, (int)strlen(cStr), digest ); // This is the md5 call

    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];

    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x", digest[i]];

    return  output;
}

@end
