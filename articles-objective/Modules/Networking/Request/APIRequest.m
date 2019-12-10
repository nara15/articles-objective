//
//  APIRequest.m
//  articles-objective
//
//  Created by Jose Mario Naranjo Leiva on 12/10/19.
//  Copyright © 2019 Jose Mario Naranjo Leiva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APIRequest.h"
#import "APIResponse.h"

// MARK: Attributes definition

@interface SimpleAPIRequest()

@property (nonatomic) HTTPMethod method;
@property (nonatomic, copy) NSURL* baseURL;
@property (nonatomic, copy) NSString* path;
@property (nonatomic, copy) NSDictionary* parameters;
@property (nonatomic, copy) NSDictionary* headers;
@property (nonatomic) Class<APIResponse> responseClass;

@end

// MARK: Implementation

@implementation SimpleAPIRequest

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.responseClass = [SimpleAPIResponse class];
    }
    return self;
}

@end

@implementation JSONAPIRequest

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.responseClass = [JSONAPIResponse class];
        self.headers = @{@"Accept": @"application/json", @"Content-type": @"application/json"};
    }
    return self;
}

@end
