//
//  HTTPMethod.h
//  articles-objective
//
//  Created by Jose Mario Naranjo Leiva on 12/10/19.
//  Copyright © 2019 Jose Mario Naranjo Leiva. All rights reserved.
//

#ifndef HTTPMethod_h
#define HTTPMethod_h

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, HTTPMethod) {
    GET, POST
};

extern NSString *HTTPMethodString(HTTPMethod method);


#endif /* HTTPMethod_h */
