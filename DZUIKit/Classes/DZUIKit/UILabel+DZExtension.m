//
//  UILabel+DZExtension.m
//  DRMVVMOC
//
//  Created by chenyk on 2018/12/11.
//  Copyright © 2018 陈宇科. All rights reserved.
//

#import "UILabel+DZExtension.h"

@implementation UILabel (DZExtension)
- (UILabel *)initWithTextColor:(UIColor *)color TextFont:(CGFloat)font{
    self = [super init];
    if (self) {
        [self setTextColor:color];
        [self setFont:[UIFont systemFontOfSize:font]];
    }
    return self;
}

- (UILabel *)initWithTextColor:(UIColor *)color TextFont:(CGFloat)font Text:(NSString *)text{
    UILabel * lab = [[UILabel alloc] initWithTextColor:color TextFont:font];
    lab.text = text;
    return lab;
}

- (UILabel *)initWithTextColor:(UIColor *)color TextFont:(CGFloat)font Text:(NSString *)text numberOfLines:(NSInteger)numberOfLines{
    UILabel * lab = [[UILabel alloc] initWithTextColor:color TextFont:font Text:text];
    lab.numberOfLines = numberOfLines;
    return lab;
}

- (UILabel *)initWithTextColor:(UIColor *)color TextFont:(CGFloat)font Text:(NSString *)text textAlignment:(NSTextAlignment)textAlignment{
    UILabel * lab = [[UILabel alloc] initWithTextColor:color TextFont:font Text:text];
    lab.textAlignment = textAlignment;
    return lab;
}
@end
