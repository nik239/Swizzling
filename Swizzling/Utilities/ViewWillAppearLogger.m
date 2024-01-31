//
//  ButtonLogger.m
//  Swizzling
//
//  Created by Nikita Ivanov on 31/01/2024.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

@implementation UIViewController (Logging)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
      Class class = [self class];
      
      SEL originalSelector = @selector(viewWillAppear:);
      SEL swizzledSelector = @selector(xxx_viewWillAppear:);
      
      Method originalMethod = class_getInstanceMethod(class, originalSelector);
      Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
      
      method_exchangeImplementations(originalMethod, swizzledMethod);
    });
}

- (void)xxx_viewWillAppear: (BOOL)animated {
    [self xxx_viewWillAppear: animated];
    NSLog(@"ViewWillAppear: %@", self);
}

@end
