//
//  IMABaseManager.m
//  TestImaginamos
//
//  Created by DAVID.VELARDE on 12/26/14.
//  Copyright (c) 2014 Imaginamos. All rights reserved.
//

#import "IMABaseManager.h"

@implementation IMABaseManager

/**
 ** A common method to handle the response.
 ** @dictResponse is the response dictionary that needs to be parsed.
 ** properties @error and @data are populated based on the response.
 **/
- (void)handleResponse:(NSDictionary *)dictResponse
{
    NSDictionary *result = dictResponse;
    if ([[result objectForKey:@"status"] intValue] == 0)
    {
        self.error = [[IMAError alloc] initWithDictionary:result];
        self.data = nil;
    }
    else
    {
        self.error = nil;
        self.optionalMessage = [result objectForKeyNotNull:@"message"];
        self.data = [dictResponse objectForKey:@"result"];
    }
}

@end
