//
//  APIResponse.h
//  articles-objective
//
//  Created by Jose Mario Naranjo Leiva on 12/10/19.
//  Copyright © 2019 Jose Mario Naranjo Leiva. All rights reserved.
//

#ifndef APIResponse_h
#define APIResponse_h

@import Foundation;

 /**
  Interface which represents a general API response object.
  */
@protocol APIResponse <NSObject>

- (NSURLSessionDataTask*) task;
- (NSURLResponse*) response;
- (NSError*) error;
- (id) responseObject;
- (id) processedResponseObject;

- (instancetype)initWithTask: (NSURLSessionDataTask *)task
                    response: (NSURLResponse*) response
              responseObject: (id) responseObject
                       error: (NSError*) error;

- (id)processResponseObject:(NSError**) error;

@end

#endif /* APIResponse_h */

/**
 Simple response from any API request.
 */
@interface SimpleAPIResponse : NSObject <APIResponse>

@end

/**
 Simple JSON response from any API request. Object implementing this interface should define a method for processing the JSON response.
 */
@interface JSONAPIResponse: SimpleAPIResponse

@end
