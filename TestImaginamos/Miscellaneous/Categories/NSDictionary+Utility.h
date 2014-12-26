//
//  NSDictionary+Utility.h
//  TestImaginamos
//
//  Created by DAVID.VELARDE on 12/26/14.
//  Copyright (c) 2014 Imaginamos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Utility)

- (id)objectForKeyNotNull:(id)key;
- (id)objectForKeyWithEmptyString:(id)key;

@end
