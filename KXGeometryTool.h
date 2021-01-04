//
//  AIGeometryTool.h
//  AIClass
//
//  Created by kings on 2020/12/26.
//  Copyright © 2020 kingsun. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface KXGeometryTool : NSObject

/// 计算p到线段p1p2的投影
/// @param p 线段外的一点
/// @param p1 线段起点
/// @param p2 线段结束点
+ (CGPoint)geometry_cacluteSubpoint:(CGPoint)p withPoint1:(CGPoint)p1 andPoint2:(CGPoint)p2;


/// 计算点组成的夹角
/// @param fromCoord 起始点
/// @param toCoord 结束点
/// @param topPoint 定点(角的定点)
+ (double)geometry_cacluteSlopWithFromCoord:(CGPoint)fromCoord toCoord:(CGPoint)toCoord withPoint:(CGPoint)topPoint;

///  计算点到直线p1p2的距离
/// @param p 线外的点
/// @param p1 起点
/// @param p2 结束点
+ (CGFloat)geometry_caclutePointToLineDistance:(CGPoint)p withPoint1:(CGPoint)p1 andPoint2:(CGPoint)p2;

/// 计算p1p2的距离
/// @param p1 第一个点
/// @param p2 第二个点
+ (CGFloat)geometry_cacluteDistanceFromPoint:(CGPoint)p1 toPoint:(CGPoint)p2;
@end

NS_ASSUME_NONNULL_END
