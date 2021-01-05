//
//  UIColor+KXColorExtension.h
//  KXBaseTool
//
//  Created by kings on 2021/1/4.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (KXColorExtension)

/// 字符串转颜色可以是0x开头，#开头，也可以是6位16进制字符串
/// @param hexStr 16进制字符串
+ (UIColor *)colorWithHexStr:(NSString *)hexStr;

/// 字符串转颜色可以是0x开头，#开头，也可以是6位16进制字符串
/// @param hexStr 16进制字符串
/// @param alpha 透明度0~1.0
+ (UIColor *)colorWithHexStr:(NSString *)hexStr alpha:(CGFloat)alpha;
@end

NS_ASSUME_NONNULL_END
