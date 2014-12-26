//
//  NSDictionary+Utility.m
//  TestImaginamos
//
//  Created by DAVID.VELARDE on 12/26/14.
//  Copyright (c) 2014 Imaginamos. All rights reserved.
//

#import "NSDictionary+Utility.h"

@implementation NSDictionary (Utility)

// in case of [NSNull null] values a nil is returned ...
- (id)objectForKeyNotNull:(id)key
{
    id object = [self objectForKey:key];
    if (object == [NSNull null])
        return nil;
    
    return object;
}

// if objectForKey returns nil, it will
// return an empty string.
- (id)objectForKeyWithEmptyString:(id)key
{
    id object = [self objectForKeyNotNull:key];
    if (object == nil)
    {
        return @"";
    }
    return object;
}


@end
