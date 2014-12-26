//
//  CategoryModel.h
//  TestImaginamos
//
//  Created by DAVID.VELARDE on 12/26/14.
//  Copyright (c) 2014 Imaginamos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface CategoryModel : NSManagedObject

@property (nonatomic, retain) NSString * categoryCreatedDate;
@property (nonatomic, retain) NSString * categoryEnabled;
@property (nonatomic, retain) NSString * categoryId;
@property (nonatomic, retain) NSString * categoryImagePath;
@property (nonatomic, retain) NSString * categoryName;
@property (nonatomic, retain) NSString * categoryTypeId;
@property (nonatomic, retain) NSString * categoryUpdatedDate;

@end
