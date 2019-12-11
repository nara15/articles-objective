//
//  BeenVerifiedClient.m
//  articles-objective
//
//  Created by Jose Naranjo on 12/11/19.
//  Copyright © 2019 Jose Mario Naranjo Leiva. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BeenVerifiedClient.h"
#import "ArticlesRequest.h"

@implementation NSURLSession (GitHub)


- (NSURLSessionDataTask*) getArticles: (ArticlesResponseBlock) completion;
{
    ArticlesRequest *request = [[ArticlesRequest alloc] init];
    NSURLSessionDataTask *task = [self dataTaskWithAPIRequest:request completion:completion];
    [task resume];
    return task;
}

@end
