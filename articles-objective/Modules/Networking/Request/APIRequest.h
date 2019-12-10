//
//  APIRequest.h
//  articles-objective
//
//  Created by Jose Mario Naranjo Leiva on 12/10/19.
//  Copyright © 2019 Jose Mario Naranjo Leiva. All rights reserved.
//

#ifndef APIRequest_h
#define APIRequest_h

#import "HTTPMethod.h"
#import "APIResponse.h"

/**
 This object represent a general API request.
 */
@protocol APIRequest <NSObject>

- (HTTPMethod) method;
- (NSURL*) baseURL;
- (NSString*) path;
- (NSDictionary*) parameters;
- (NSDictionary*) headers;
- (Class<APIResponse>) responseClass;

@end


#endif /* APIRequest_h */

@interface SimpleAPIRequest : NSObject <APIRequest>

@end

@interface JSONAPIRequest : SimpleAPIRequest

@end
