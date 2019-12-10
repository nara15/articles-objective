//
//  APIClient.h
//  articles-objective
//
//  Created by Jose Mario Naranjo Leiva on 12/10/19.
//  Copyright © 2019 Jose Mario Naranjo Leiva. All rights reserved.
//

@import Foundation;

#ifndef APIClient_h
#define APIClient_h

#import "APIRequest.h"
#import "APIResponse.h"

typedef void(^APIClientCompletionBlock)(id<APIResponse> response);

@protocol APIClient <NSObject>

- (NSURLSessionDataTask *)dataTaskWithAPIRequest:(id<APIRequest>)request completion:(APIClientCompletionBlock)completion;

@end

#endif /* APIClient_h */

@interface NSURLSession(APIClient) <APIClient>

@end
