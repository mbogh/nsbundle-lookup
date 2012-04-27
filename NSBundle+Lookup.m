//
//  NSBundle+Lookup.m
//
//  Created by Morten Bøgh on 4/12/12.
//  Copyright (c) 2012 JustABeech.com. All rights reserved.
//

#import "NSBundle+Lookup.h"

@implementation NSBundle (Lookup)

- (NSString *)pathForNewestVersionOfResource:(NSString *)name ofType:(NSString *)ext {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:name];
    if (ext) {
        filePath = [filePath stringByAppendingPathExtension:ext];
    }
    if (![[NSFileManager defaultManager] fileExistsAtPath:filePath]) {
        filePath = [self pathForResource:name ofType:ext];
    }
    return filePath;
}

@end
