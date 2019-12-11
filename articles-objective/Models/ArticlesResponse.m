//
//  ArticlesResponse.m
//  articles-objective
//
//  Created by Jose Naranjo on 12/11/19.
//  Copyright © 2019 Jose Mario Naranjo Leiva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArticlesResponse.h"


@implementation ArticlesResponse

- (id)processResponseObject:(NSError**) error; {
    NSError *__error;
    id processedResponseObject = [super processResponseObject:&__error];
    NSArray *articlesFromResponse = [processedResponseObject valueForKey:@"articles"];
    if (__error || ![articlesFromResponse isKindOfClass:[NSArray class]]) {
        if (error) *error = __error;
        return nil;
    }
    else {
        return [Article withArray:articlesFromResponse];
    }
}

- (NSArray*) articles {
    return self.processedResponseObject;
}

@end
