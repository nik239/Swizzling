//
//  User.m
//  Swizzling
//
//  Created by Nikita Ivanov on 30/01/2024.
//

#import "User.h"

@interface User ()

@end

@implementation User

+ (BOOL)isGroupB{
    static BOOL sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
      sharedInstance = arc4random_uniform(2) ? YES : NO;
    });
    return sharedInstance;
}

@end
