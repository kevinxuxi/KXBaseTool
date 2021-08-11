//
//  UIView+Extension.m
//  KXBaseTool
//
//  Created by kings on 2021/1/29.
//

#import "UIView+Extension.h"

@implementation UIView (Frame)
- (CGFloat)kx_x {
    return CGRectGetMinX(self.frame);
}

- (void)setKx_x:(CGFloat)kx_x {
    self.frame = CGRectMake(kx_x, CGRectGetMinY(self.frame), CGRectGetWidth(self.frame), CGRectGetHeight(self.frame));
}

- (CGFloat)kx_y {
    return CGRectGetMinY(self.frame);
}

- (void)setKx_y:(CGFloat)kx_y {
    self.frame = CGRectMake(CGRectGetMinX(self.frame),kx_y, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame));
}

- (CGFloat)kx_width {
    return CGRectGetWidth(self.frame);
}

- (void)setKx_width:(CGFloat)kx_width {
    self.frame = CGRectMake(CGRectGetMinX(self.frame),CGRectGetMinY(self.frame), kx_width, CGRectGetHeight(self.frame));
}

- (CGFloat)kx_height {
    return CGRectGetHeight(self.frame);
}

- (void)setKx_height:(CGFloat)kx_height {
    self.frame = CGRectMake(CGRectGetMinX(self.frame), CGRectGetMinY(self.frame), CGRectGetWidth(self.frame), kx_height);
    
}

@end
