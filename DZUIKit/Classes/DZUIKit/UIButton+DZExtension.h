//
//  UIButton+DZExtension.h
//  DRMVVMOC
//
//  Created by chenyk on 2018/12/11.
//  Copyright © 2018 陈宇科. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (DZExtension)
-(UIButton *)initNavigationButton:(UIImage *)image;
-(UIButton *)initNavigationButtonWithTitle:(NSString *)title textColor:(UIColor *)textColor;

-(UIButton *)initWithImage:(UIImage *)imgae;
-(UIButton *)initWithTitle:(NSString *)title textColor:(UIColor *)textColor textFont:(CGFloat)textfont;
-(UIButton *)initWithImageNormal:(NSString *)imgaenormal imageSeleted:(NSString *)imageSeleted;
-(UIButton *)initWithImageNormal:(NSString *)imgaenormal imageHighlight:(NSString *)imageHighlight;
-(UIButton *)initWithBackgroundColorNoraml:(UIColor *)colorNoraml backgroundColoHighlight:(UIColor *)colorHighlight;
-(UIButton *)initWithTextColorNoraml:(UIColor *)colorNoraml TextColorSelected:(UIColor *)colorSelected;
-(UIButton *)initWithBackgroundColorNoraml:(UIColor *)noralColor seletedColor:(UIColor *)seletedColor highlightColor:(UIColor *)highlightColor;
-(UIButton *)initWithTitle:(NSString *)title cornerRadius:(CGFloat)cornerRadius;
-(UIButton *)initWithTitle:(NSString *)title cornerRadius:(CGFloat)cornerRadius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;
@end

NS_ASSUME_NONNULL_END
