//
//  SubscribeButton.m
//  Swizzling
//
//  Created by Nikita Ivanov on 30/01/2024.
//

#import "SubscribeButton.h"

@interface SubscribeButton ()

- (void)configureStyle;
- (void)xxx_configureStyle;

@end

@implementation SubscribeButton

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self configureStyle];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self configureStyle];
    }
    return self;
}

- (void)configureStyle {
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.font = [UIFont systemFontOfSize:20];
}

@end
