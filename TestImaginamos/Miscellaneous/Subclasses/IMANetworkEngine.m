//
//  IMANetworkEngine.m
//  TestImaginamos
//
//  Created by DAVID.VELARDE on 12/26/14.
//  Copyright (c) 2014 Imaginamos. All rights reserved.
//

#import "IMANetworkEngine.h"

@implementation IMANetworkEngine

+ (id)sharedInstance
{
    static IMANetworkEngine *sharedInstance;
    static dispatch_once_t done;
    
    dispatch_once(&done, ^{
        NSURL *baseURL = [NSURL URLWithString:kBaseURL];
        sharedInstance = [[IMANetworkEngine alloc] initWithBaseURL:baseURL];
        [sharedInstance setRequestSerializer:[AFJSONRequestSerializer serializer]];
        [sharedInstance setResponseSerializer:[AFJSONResponseSerializer serializer]];
    });
    
    return sharedInstance;
}

@end
