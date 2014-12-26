//
//  IMAAPIManager.m
//  TestImaginamos
//
//  Created by DAVID.VELARDE on 12/26/14.
//  Copyright (c) 2014 Imaginamos. All rights reserved.
//

#import "IMAAPIManager.h"
#import "IMANetworkEngine.h"

@implementation IMAAPIManager


/**
 ** Get all the categories
 **/

- (void)getCategories
{
    
    IMANetworkEngine *networkEngine = [IMANetworkEngine sharedInstance];

    [networkEngine GET:@"category" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {

        NSDictionary *dictJSON = responseObject;
        
        [self handleResponse:dictJSON];
        
        if (self.error == nil)
        {
            if (self.delegate && [self.delegate respondsToSelector:@selector(didGetCategories:)])
            {
                [self.delegate didGetCategories:self];
            }
        }
        else
        {
            if (self.delegate && [self.delegate respondsToSelector:@selector(didFailToGetCategories:error:)])
            {
                [self.delegate didFailToGetCategories:self error:self.error];
            }
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(didFailToGetCategories:error:)])
        {
            self.error = [[IMAError alloc] initWithError:error];
            [self.delegate didFailToGetCategories:self error:self.error];
        }
    }];
    
}

/**
 ** Get all the information for one single categorie identified by its Id
 ** @Id the categorie's ID
 **/

- (void)getSingleCategorieById:(NSString *)Id;
{
    IMANetworkEngine *networkEngine = [IMANetworkEngine sharedInstance];
    
    NSString *categoryURL = [NSString stringWithFormat:@"category/details/%@",Id];
    
    [networkEngine GET:categoryURL parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSDictionary *dictJSON = responseObject;
        
        [self handleResponse:dictJSON];
        
        if (self.error == nil)
        {
            if (self.delegate && [self.delegate respondsToSelector:@selector(didGetSingleCategorie:)])
            {
                [self.delegate didGetSingleCategorie:self];
            }
        }
        else
        {
            if (self.delegate && [self.delegate respondsToSelector:@selector(didFailToGetSingleCategorie:error:)])
            {
                [self.delegate didFailToGetSingleCategorie:self error:self.error];
            }
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(didFailToGetSingleCategorie:error:)])
        {
            self.error = [[IMAError alloc] initWithError:error];
            [self.delegate didFailToGetSingleCategorie:self error:self.error];
        }
    }];
}

@end
