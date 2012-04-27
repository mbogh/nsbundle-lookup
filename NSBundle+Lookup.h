//
//  NSBundle+Lookup.h
//
//  Created by Morten Bøgh on 4/12/12.
//  Copyright (c) 2012 JustABeech.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSBundle (Lookup)
- (NSString *)pathForNewestVersionOfResource:(NSString *)name ofType:(NSString *)ext;
@end
