//
//  ArticlesRequest.m
//  articles-objective
//
//  Created by Jose Naranjo on 12/11/19.
//  Copyright © 2019 Jose Mario Naranjo Leiva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArticlesRequest.h"
#import "../../Models/ArticlesResponse.h"

@implementation ArticlesRequest

- (HTTPMethod)method
{
    return GET;
}

- (NSString *)path
{
    return @"articles/index.ios.json";
}

- (Class)responseClass
{
    return [ArticlesResponse class];
}


@end
