//
//  AbstractButtonStyle.m
//  Swizzling
//
//  Created by Nikita Ivanov on 30/01/2024.
//

#import "ButtonStyle.h"

@implementation ButtonStyle

+ (NSString *)title {
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

+ (UIColor *)color {
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

@end
