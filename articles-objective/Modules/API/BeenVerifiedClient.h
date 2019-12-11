//
//  BeenVerifiedClient.h
//  articles-objective
//
//  Created by Jose Naranjo on 12/11/19.
//  Copyright © 2019 Jose Mario Naranjo Leiva. All rights reserved.
//

#ifndef BeenVerifiedClient_h
#define BeenVerifiedClient_h


#import "../Networking/Networking.h"
#import "../../Models/ArticlesResponse.h"

typedef void(^ArticlesResponseBlock)(ArticlesResponse *response);

@protocol BeenVerifiedClient

- (NSURLSessionDataTask *)getArticles:(ArticlesResponseBlock)completion;

@end

@interface NSURLSession (GitHub) <BeenVerifiedClient>

@end


#endif /* BeenVerifiedClient_h */
