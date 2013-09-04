//
// NSData+AES.h
//
// Created by Pay on 13/1/11.
// Copyright (c) 2013年 Octalord. The MIT License
//

#import <Foundation/Foundation.h>

@interface NSData (Encryption)

- (NSData *) AES256EncryptWithKey:(NSString *)key;   // Encrypt
- (NSData *) AES256DecryptWithKey:(NSString *)key;   // Decrypt

@end
