//
//  UIButton+DZExtension.m
//  DRMVVMOC
//
//  Created by chenyk on 2018/12/11.
//  Copyright © 2018 陈宇科. All rights reserved.
//

#import "UIButton+DZExtension.h"
#import "UIImage+DZExtension.h"

#undef    NAV_BUTTON_MIN_WIDTH
#define   NAV_BUTTON_MIN_WIDTH    (40.0f)

#undef    NAV_BUTTON_MIN_HEIGHT
#define   NAV_BUTTON_MIN_HEIGHT    (40.0f)

#undef    NAV_BAR_HEIGHT
#define   NAV_BAR_HEIGHT    (44.0f)

@implementation UIButton (DZExtension)

-(UIButton *)initNavigationButton:(UIImage *)image{
    CGRect buttonFrame = CGRectZero;
    
    buttonFrame = CGRectMake(0, 0, image.size.width, NAV_BAR_HEIGHT);
    
    if ( buttonFrame.size.width >= NAV_BUTTON_MIN_WIDTH )
    {
        buttonFrame.size.width = NAV_BUTTON_MIN_WIDTH;
    }
    
    if ( buttonFrame.size.height >= NAV_BUTTON_MIN_HEIGHT )
    {
        buttonFrame.size.height = NAV_BUTTON_MIN_HEIGHT;
    }
    
    self = [self initWithFrame:buttonFrame];
    self.contentMode = UIViewContentModeScaleAspectFit;
    self.backgroundColor = [UIColor clearColor];
    self.contentEdgeInsets = UIEdgeInsetsMake(0, -12, 0, 0);// 图片和字体靠近一点，根据实际情况调整
    [self setImage:image forState:UIControlStateNormal];
    return self;
}

-(UIButton *)initNavigationButtonWithTitle:(NSString *)title textColor:(UIColor *)textColor{
    CGRect buttonFrame = CGRectZero;
    
    CGSize titleSize = [title boundingRectWithSize:CGSizeMake(999999.0f, NAV_BAR_HEIGHT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:16]} context:nil].size;
    
    buttonFrame = CGRectMake(0, 0, titleSize.width, NAV_BAR_HEIGHT);
    
    self = [self initWithFrame:buttonFrame];
    self.contentMode = UIViewContentModeScaleAspectFit;
    self.backgroundColor = [UIColor clearColor];
    self.titleLabel.font = [UIFont systemFontOfSize:16.0f];
    [self setTitleColor:textColor forState:UIControlStateNormal];
    [self setTitle:title forState:UIControlStateNormal];
    return self;
}


-(UIButton *)initWithImage:(UIImage *)imgae{
    self = [super init];
    if (self) {
        [self setImage:imgae forState:UIControlStateNormal];
    }
    return self;
}

-(UIButton *)initWithTitle:(NSString *)title textColor:(UIColor *)textColor textFont:(CGFloat)textfont{
    self = [super init];
    if (self) {
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitleColor:textColor forState:UIControlStateNormal];
        self.titleLabel.font = [UIFont systemFontOfSize:textfont];
    }
    return self;
}

-(UIButton *)initWithTextColorNoraml:(UIColor *)colorNoraml TextColorSelected:(UIColor *)colorSelected{
    self = [super init];
    if (self) {
        [self setTitleColor:colorNoraml forState:UIControlStateNormal];
        [self setTitleColor:colorSelected forState:UIControlStateSelected];
    }
    return self;
}

-(UIButton *)initWithBackgroundColorNoraml:(UIColor *)colorNoraml backgroundColoHighlight:(UIColor *)colorHighlight{
    self = [super init];
    if (self) {
        [self dr_setBackgroundColor:colorNoraml forState:UIControlStateNormal];
        [self dr_setBackgroundColor:colorHighlight forState:UIControlStateHighlighted];
    }
    return self;
}

-(UIButton *)initWithImageNormal:(NSString *)imgaenormal imageSeleted:(NSString *)imageSeleted{
    UIButton * btn = [self initWithImage:[UIImage imageNamed:imgaenormal]];
    [btn setImage:[UIImage imageNamed:imageSeleted] forState:UIControlStateSelected];
    return btn;
}
-(UIButton *)initWithImageNormal:(NSString *)imgaenormal imageHighlight:(NSString *)imageHighlight{
    UIButton * btn = [self initWithImage:[UIImage imageNamed:imgaenormal]];
    [btn setImage:[UIImage imageNamed:imageHighlight] forState:UIControlStateHighlighted];
    return btn;
}

-(UIButton *)initWithBackgroundColorNoraml:(UIColor *)noralColor seletedColor:(UIColor *)seletedColor highlightColor:(UIColor *)highlightColor{
    UIButton * btn = [self initWithBackgroundColorNoraml:noralColor backgroundColoHighlight:highlightColor];
    [btn dr_setBackgroundColor:seletedColor forState:UIControlStateSelected];
    return btn;
}
-(UIButton *)initWithTitle:(NSString *)title cornerRadius:(CGFloat)cornerRadius{
    UIButton * btn = [self initWithTitle:title textColor:[UIColor blackColor] textFont:16];
    btn.layer.cornerRadius = cornerRadius;
    btn.layer.masksToBounds = YES;
    return btn;
}

-(UIButton *)initWithTitle:(NSString *)title cornerRadius:(CGFloat)cornerRadius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor{
    UIButton * btn = [self initWithTitle:title cornerRadius:cornerRadius];
    btn.layer.cornerRadius = cornerRadius;
    btn.layer.masksToBounds = YES;
    btn.layer.borderColor = borderColor.CGColor;
    btn.layer.borderWidth = borderWidth;
    return btn;
}

/**
 *  @brief  使用颜色设置按钮背景
 *
 *  @param backgroundColor 背景颜色
 *  @param state           按钮状态
 */
- (void)dr_setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state
{
    [self setBackgroundImage:[UIImage dr_b_imageWithColor:backgroundColor] forState:state];
}

@end
