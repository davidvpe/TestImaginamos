//
//  IMAError.h
//  TestImaginamos
//
//  Created by DAVID.VELARDE on 12/26/14.
//  Copyright (c) 2014 Imaginamos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IMAError : NSObject

@property (nonatomic, strong) NSString *errorCode;
@property (nonatomic, strong) NSString *message;

- (id)initWithDictionary:(NSDictionary*)dictResult;
- (id)initWithError:(NSError*)error;
- (id)initWithMessage:(NSString*)message errorCode:(NSString*)code;

@end
