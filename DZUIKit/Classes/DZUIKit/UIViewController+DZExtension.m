//
//  UIViewController+DZExtension.m
//  DRMVVMOC
//
//  Created by chenyk on 2018/12/12.
//  Copyright © 2018 陈宇科. All rights reserved.
//

#import "UIViewController+DZExtension.h"

@implementation UIViewController (DZExtension)

+ (UIViewController *)currentViewController {
    UIViewController *rootViewController = self.applicationDelegate.window.rootViewController;
    return [self currentViewControllerFrom:rootViewController];
}

+(UINavigationController *)currentNavigationViewController {
    UIViewController *currentViewController = [self currentViewController];
    return currentViewController.navigationController;
}
+ (id<UIApplicationDelegate>)applicationDelegate {
    return [UIApplication sharedApplication].delegate;
}

/** 递归拿到当控制器 */
+ (UIViewController *)currentViewControllerFrom:(UIViewController *)viewController {
    if ([viewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *navigationController = (UINavigationController *)viewController;
        return [self currentViewControllerFrom:navigationController.viewControllers.lastObject];
    } else if ([viewController isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tableBarController = (UITabBarController *)viewController;
        return [self currentViewControllerFrom:tableBarController.selectedViewController];
    } else if (viewController.presentedViewController != nil) {
        return [self currentViewControllerFrom:viewController.presentedViewController];
    } else {
        return viewController;
    }
}


@end
