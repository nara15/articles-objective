//
//  HTTPMethod.m
//  articles-objective
//
//  Created by Jose Mario Naranjo Leiva on 12/10/19.
//  Copyright © 2019 Jose Mario Naranjo Leiva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HTTPMethod.h"

NSString *HTTPMethodString(HTTPMethod method) {
    switch (method) {
        case GET: return @"GET";
        case POST: return @"POST";
        default: return nil;
    }
}
