//
//  AIGeometryTool.m
//  AIClass
//
//  Created by kings on 2020/12/26.
//  Copyright © 2020 kingsun. All rights reserved.
//

#import "KXGeometryTool.h"

@implementation KXGeometryTool
+ (CGPoint)geometry_cacluteSubpoint:(CGPoint)p withPoint1:(CGPoint)p1 andPoint2:(CGPoint)p2
{
    CGFloat a = p2.y - p1.y;
    CGFloat b = p1.x - p2.x;
    CGFloat c = p2.x * p1.y - p1.x * p2.y;
    CGFloat x = (b * b * p.x - a * b * p.y - a * c) / (a * a + b * b);
    CGFloat y = (-a * b * p.x + a * a * p.y - b * c) / (a * a + b * b);
    return CGPointMake(x, y);
}



+ (double)geometry_cacluteSlopWithFromCoord:(CGPoint)fromCoord toCoord:(CGPoint)toCoord withPoint:(CGPoint)topPoint
{
    CGFloat x1 = fromCoord.x - topPoint.x;
    CGFloat y1 = fromCoord.y - topPoint.y;
    CGFloat x2 = toCoord.x - topPoint.x;
    CGFloat y2 =toCoord.y - topPoint.y;
    CGFloat x = x1 * x2 + y1 * y2;
    CGFloat y = x1 * y2 - x2 * y1;
    CGFloat angle = acos(x/sqrt(x*x+y*y));
    return angle;
}

+ (CGFloat)geometry_caclutePointToLineDistance:(CGPoint)p withPoint1:(CGPoint)p1 andPoint2:(CGPoint)p2
{
    CGFloat a = p2.y - p1.y;
    CGFloat b = p1.x - p2.x;
    CGFloat c = p2.x * p1.y - p1.x * p2.y;
    CGFloat d = fabs((a * p.x + b * p.y + c)) / sqrt(pow(a, 2) + pow(b, 2));
    return d;
}

+ (CGFloat)geometry_cacluteDistanceFromPoint:(CGPoint)p1 toPoint:(CGPoint)p2
{
    // 根号((x2 - x1)^2 + (y2 - y1)^2)
    return sqrt(pow((p2.x - p1.x), 2) + pow((p2.y - p1.y), 2));
}

@end
