//
//  DishModel.h
//  TestImaginamos
//
//  Created by DAVID.VELARDE on 12/26/14.
//  Copyright (c) 2014 Imaginamos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface DishModel : NSManagedObject

@property (nonatomic, retain) NSString * dishCreatedDate;
@property (nonatomic, retain) NSString * dishDescription;
@property (nonatomic, retain) NSString * dishEnabled;
@property (nonatomic, retain) NSString * dishId;
@property (nonatomic, retain) NSString * dishImagePath;
@property (nonatomic, retain) NSString * dishLeftImagePath;
@property (nonatomic, retain) NSString * dishName;
@property (nonatomic, retain) NSString * dishRightImagePath;
@property (nonatomic, retain) NSString * dishSubCategoryId;
@property (nonatomic, retain) NSString * dishUpdatedDate;

@end
