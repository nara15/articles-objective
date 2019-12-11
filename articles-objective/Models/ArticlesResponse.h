//
//  ArticlesResponse.h
//  articles-objective
//
//  Created by Jose Naranjo on 12/11/19.
//  Copyright © 2019 Jose Mario Naranjo Leiva. All rights reserved.
//

#ifndef ArticlesResponse_h
#define ArticlesResponse_h

#import "Networking.h"
#import "Article.h"

@interface ArticlesResponse : JSONAPIResponse

- (NSArray*) articles;

@end

#endif /* ArticlesResponse_h */
