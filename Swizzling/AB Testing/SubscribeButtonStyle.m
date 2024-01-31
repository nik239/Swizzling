//
//  UIButtonABTesting.m
//  Swizzling
//
//  Created by Nikita Ivanov on 30/01/2024.
//

#import "SubscribeButton.h"
#import "User.h"
#import <objc/runtime.h>

@implementation SubscribeButton (ABTesting)

+ (void)load {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    Class class = [SubscribeButton class];
    
    SEL originalSelector = @selector(configureStyle:);
    SEL swizzledSelector = @selector(xxx_configureStyle:);
    
    Method originalMethod = class_getInstanceMethod(class, originalSelector);
    Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
    
    method_exchangeImplementations(originalMethod, swizzledMethod);
  });
}

- (void)xxx_configureStyle {
  [self xxx_configureStyle];
  
  if ([User currentUserGroup]) {
    self.backgroundColor = [UIColor redColor];
  } else {
    self.backgroundColor = [UIColor blueColor];
  }
}
@end
