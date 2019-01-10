//
//  UILabel+DZExtension.h
//  DRMVVMOC
//
//  Created by chenyk on 2018/12/11.
//  Copyright © 2018 陈宇科. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (DZExtension)
- (UILabel *)initWithTextColor:(UIColor *)color TextFont:(CGFloat)font;
- (UILabel *)initWithTextColor:(UIColor *)color TextFont:(CGFloat)font Text:(NSString *)text;
- (UILabel *)initWithTextColor:(UIColor *)color TextFont:(CGFloat)font Text:(NSString *)text numberOfLines:(NSInteger)numberOfLines;
- (UILabel *)initWithTextColor:(UIColor *)color TextFont:(CGFloat)font Text:(NSString *)text textAlignment:(NSTextAlignment)textAlignment;
@end

NS_ASSUME_NONNULL_END
