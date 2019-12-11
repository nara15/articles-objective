//
//  Article.h
//  articles-objective
//
//  Created by Jose Mario Naranjo Leiva on 12/10/19.
//  Copyright © 2019 Jose Mario Naranjo Leiva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "../Modules/JSONSerialization/NSObject+JSONSerialization.h"

@interface Article : NSObject

@property (nonatomic, strong, readonly) NSString* title;
@property (nonatomic, strong, readonly) NSString* description_text;
@property (nonatomic, strong, readonly) NSString* author;
@property (nonatomic, strong, readonly) NSString* date;
@property (nonatomic, strong, readonly) NSString* link;

- (instancetype)initWithDictionary:(NSDictionary*)userDictionary;

@end

#ifndef Article_h
#define Article_h


#endif /* Article_h */
