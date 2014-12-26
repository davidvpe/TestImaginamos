//
//  IMANetworkEngine.h
//  TestImaginamos
//
//  Created by DAVID.VELARDE on 12/26/14.
//  Copyright (c) 2014 Imaginamos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>

@interface IMANetworkEngine : AFHTTPRequestOperationManager

+ (id)sharedInstance;

@end
