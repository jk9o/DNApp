//
//  DNAPI.h
//  DNApp
//
//  Created by Meng To on 2014-04-29.
//  Copyright (c) 2014 Meng To. All rights reserved.
//

#import <Foundation/Foundation.h>

// Referencing variables
extern NSString *const DNAPIBaseURL;
extern NSString *const DNAPIStories;
extern NSString *const DNAPIComments;
extern NSString *const DNAPILogin;

@interface NSURLRequest (DNAPI)

// functions we'll need
+ (instancetype)requestWithPattern:(NSString *)string object:(id)object;
+ (instancetype)postRequest:(NSString *)string parameters:(NSDictionary *)parameters;
+ (instancetype)deleteRequest:(NSString *)string parameters:(NSDictionary *)parameters;
+ (instancetype)requestWithMethod:(NSString *)method
                              url:(NSString *)url
                       parameters:(NSDictionary *)parameters;

@end
