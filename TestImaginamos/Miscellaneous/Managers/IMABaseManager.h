//
//  IMABaseManager.h
//  TestImaginamos
//
//  Created by DAVID.VELARDE on 12/26/14.
//  Copyright (c) 2014 Imaginamos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMAError.h"

@interface IMABaseManager : NSObject

@property (strong, nonatomic) IMAError *error;
@property (strong, nonatomic) NSString *optionalMessage;
@property (strong, nonatomic) id data;

- (void)handleResponse:(NSDictionary *)dictResponse;


@end
