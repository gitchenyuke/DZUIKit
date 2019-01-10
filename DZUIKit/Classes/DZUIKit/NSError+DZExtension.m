//
//  NSError+DZExtension.m
//  DRMVVMOC
//
//  Created by chenyk on 2018/12/11.
//  Copyright © 2018 陈宇科. All rights reserved.
//

#import "NSError+DZExtension.h"

@implementation NSError (DZExtension)
+ (NSError *)dz_errorWithCode:(NSInteger)code localizedDescription:(NSString *)localizedDescription{
    NSError *error = nil;
    NSDictionary * userInfo = [NSDictionary dictionaryWithObject:localizedDescription forKey:NSLocalizedDescriptionKey];
    error = [NSError errorWithDomain:NSCocoaErrorDomain code:code userInfo:userInfo];
    return error;
}

+ (NSError *)dz_errorWithNetErrCode:(NSInteger)code{
    return [self dz_errorWithCode:404 localizedDescription:@"无网络"];
}
@end
