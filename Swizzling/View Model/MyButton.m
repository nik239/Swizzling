//
//  SubscribeButton.m
//  Swizzling
//
//  Created by Nikita Ivanov on 30/01/2024.
//

#import "MyButton.h"
#import "PrimaryButtonStyle.h"

@interface MyButton ()

- (void)configureButton;
- (void)configureButton:(Class)style;

@end

@implementation MyButton

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self configureButton];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self configureButton];
    }
    return self;
}

- (void)configureButton {
    [self configureButton: [PrimaryButtonStyle class]];
}

- (void)configureButton: (Class)style {
    [self setTitleColor:[style color] forState:UIControlStateNormal];
    [self setTitle:[style title] forState:UIControlStateNormal];
}

@end
