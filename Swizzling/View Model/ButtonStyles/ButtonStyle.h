//
//  AbstractButtonStyle.h
//  Swizzling
//
//  Created by Nikita Ivanov on 30/01/2024.
//

#import <UIKit/UIKit.h>

@interface ButtonStyle : NSObject

@property (class, nonatomic, readonly, strong) NSString *title;
@property (class, nonatomic, readonly, strong) UIColor *color;

@end
