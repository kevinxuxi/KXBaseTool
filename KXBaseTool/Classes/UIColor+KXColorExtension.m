//
//  UIColor+KXColorExtension.m
//  KXBaseTool
//
//  Created by kings on 2021/1/4.
//

#import "UIColor+KXColorExtension.h"

@implementation UIColor (KXColorExtension)
+ (UIColor *)colorWithHexStr:(NSString *)hexStr
{
    return [self colorWithHexStr:hexStr alpha:1.0];
}

+ (UIColor *)colorWithHexStr:(NSString *)hexStr alpha:(CGFloat)alpha
{
    // 处理字符串
    NSString *cString = [[hexStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] uppercaseString];
    if ([cString hasPrefix:@"0X"]) {
        cString = [cString substringFromIndex:2];
    }
    if ([cString hasPrefix:@"#"]) {
        cString = [cString substringFromIndex:1];
    }
    if (cString.length != 6) {
        return nil;
    }
    
    // 将对应的字符串转换为对应的颜色值
    NSRange range = NSMakeRange(0, 2);
    NSString *rStr = [cString substringWithRange:range];
    range.location = 2;
    NSString *gStr = [cString substringWithRange:range];
    range.location = 4;
    NSString *bStr = [cString substringWithRange:range];
    int r,g,b;
    [[NSScanner scannerWithString:rStr] scanInt:&r];
    [[NSScanner scannerWithString:gStr] scanInt:&g];
    [[NSScanner scannerWithString:bStr] scanInt:&b];
    
    // 过滤不合理的alpha
    if (alpha < 0) {
        alpha = 0;
    }
    if (alpha > 1.0) {
        alpha = 1.0;
    }
    
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:alpha];
}
@end
