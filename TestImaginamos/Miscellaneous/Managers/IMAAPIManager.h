//
//  IMAAPIManager.h
//  TestImaginamos
//
//  Created by DAVID.VELARDE on 12/26/14.
//  Copyright (c) 2014 Imaginamos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMAError.h"
#import "IMABaseManager.h"

@class IMAAPIManager;

@protocol APIManagerDelegate <NSObject>
@optional

// Categories
- (void)didGetCategories:(IMAAPIManager *)manager;
- (void)didFailToGetCategories:(IMAAPIManager *)manager error:(IMAError *)error;

// Single Categorie
- (void)didGetSingleCategorie:(IMAAPIManager *)manager;
- (void)didFailToGetSingleCategorie:(IMAAPIManager *)manager error:(IMAError *)error;

@end

@interface IMAAPIManager : IMABaseManager

@property (nonatomic, weak) id<APIManagerDelegate> delegate;

// Categories
- (void)getCategories;

// Single Categorie
- (void)getSingleCategorieById:(NSString *)Id;

@end
