//
//  UIButtonABTesting.m
//  Swizzling
//
//  Created by Nikita Ivanov on 30/01/2024.
//

#import "MyButton.h"
#import "ButtonStyleB.h"
#import "User.h"
#import <objc/runtime.h>

@interface MyButton (Private)

- (void)configureButton;
- (void)configureButton:(Class)style;

@end

@implementation MyButton (ABTesting)

+ (void)load {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    Class class = [MyButton class];
    
    SEL originalSelector = @selector(configureButton);
    SEL swizzledSelector = @selector(xxx_configureButton);
    
    Method originalMethod = class_getInstanceMethod(class, originalSelector);
    Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
    
    method_exchangeImplementations(originalMethod, swizzledMethod);
  });
}

- (void)xxx_configureButton {
    if ([User currentUserGroup]) {
      [self configureButton: [ButtonStyleB class]];
    } else {
      [self xxx_configureButton];
    }
}
@end
