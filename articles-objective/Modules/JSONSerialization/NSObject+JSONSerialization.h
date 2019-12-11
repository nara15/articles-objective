//
//  NSObject+JSONSerialization.h
//  articles-objective
//
//  Created by Jose Naranjo on 12/11/19.
//  Copyright © 2019 Jose Mario Naranjo Leiva. All rights reserved.
//

#ifndef NSObject_JSONSerialization_h
#define NSObject_JSONSerialization_h

@import Foundation;

@interface NSObject (JSONSerialization)

+ (NSDictionary*) mapping;
+ (instancetype) withDictionary: (NSDictionary*) dictionary;
+ (NSArray*) withArray: (NSArray*) array;

@end


#endif /* NSObject_JSONSerialization_h */
