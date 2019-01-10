//
//  NSError+DZExtension.h
//  DRMVVMOC
//
//  Created by chenyk on 2018/12/11.
//  Copyright © 2018 陈宇科. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSError (DZExtension)
+ (NSError *)dz_errorWithCode:(NSInteger)code localizedDescription:(NSString *)localizedDescription;
+ (NSError *)dz_errorWithNetErrCode:(NSInteger)code;
@end

NS_ASSUME_NONNULL_END
