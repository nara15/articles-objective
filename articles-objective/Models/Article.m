//
//  Article.m
//  articles-objective
//
//  Created by Jose Mario Naranjo Leiva on 12/10/19.
//  Copyright © 2019 Jose Mario Naranjo Leiva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Article.h"

@implementation Article

+ (NSDictionary*) mapping {
    return @{ @"title": @"title",
              @"description": @"description_text",
              @"author": @"author",
              @"article_date": @"date",
              @"link": @"link"
              
    };
}

- (instancetype) initWithDictionary:(NSDictionary *)userDictionary {
    self = [super init];
    if (!self) {
        return nil;
    }
    // Properties associated with Article object
    _title = userDictionary[@"title"];
    _description_text = userDictionary[@"description"];
    
    return self;
}

@end
