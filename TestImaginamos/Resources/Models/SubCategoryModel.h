//
//  SubCategoryModel.h
//  TestImaginamos
//
//  Created by DAVID.VELARDE on 12/26/14.
//  Copyright (c) 2014 Imaginamos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface SubCategoryModel : NSManagedObject

@property (nonatomic, retain) NSString * subCategoryAdditionEnable;
@property (nonatomic, retain) NSString * subCategoryCategoryId;
@property (nonatomic, retain) NSString * subCategoryCreatedDate;
@property (nonatomic, retain) NSString * subCategoryEnabled;
@property (nonatomic, retain) NSString * subCategoryId;
@property (nonatomic, retain) NSString * subCategoryName;
@property (nonatomic, retain) NSString * subCategoryUpdatedDate;

@end
