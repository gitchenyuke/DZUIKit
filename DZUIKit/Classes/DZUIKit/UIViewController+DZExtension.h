//
//  UIViewController+DZExtension.h
//  DRMVVMOC
//
//  Created by chenyk on 2018/12/12.
//  Copyright © 2018 陈宇科. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (DZExtension)

+ (UIViewController *)currentViewController;
+ (UINavigationController *)currentNavigationViewController;

@end

NS_ASSUME_NONNULL_END
