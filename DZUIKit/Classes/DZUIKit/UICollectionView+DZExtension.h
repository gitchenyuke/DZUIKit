//
//  UICollectionView+DZExtension.h
//  DRMVVMOC
//
//  Created by chenyk on 2018/12/11.
//  Copyright © 2018 陈宇科. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UICollectionView (DZExtension)
- (void)dz_registerCell:(Class)cls;
- (void)dz_registerNibCell:(Class)cls;

- (void)dz_registerCell:(Class)cls forCellReuseIdentifier:(NSString *)reuseIdentifier;
- (void)dz_registerNibCell:(Class)cls forCellReuseIdentifier:(NSString *)reuseIdentifier;

- (void)dz_registerView:(Class)cls forSupplementaryViewOfKind:(NSString *)kind;
- (void)dz_registerNibView:(Class)cls forSupplementaryViewOfKind:(NSString *)kind;

- (void)dz_registerView:(Class)cls forSupplementaryViewOfKind:(NSString *)kind forViewReuseIdentifier:(NSString *)reuseIdentifier;
- (void)dz_registerNibView:(Class)cls forSupplementaryViewOfKind:(NSString *)kind forViewReuseIdentifier:(NSString *)reuseIdentifier;
@end

NS_ASSUME_NONNULL_END
