//
//  KXLineProgressView.h
//  KXBaseTool
//
//  Created by kings on 2021/1/4.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@interface KXLineProgressView : UIView
/// 是否支持渐变
@property (nonatomic, assign)BOOL  needGradient;
/// 渐变颜色数组
@property (nonatomic, strong)NSArray *colorArray;
/// 颜色分布
@property (nonatomic, strong)NSArray *colorLocationArray;
/// 进度条默认颜色
@property (nonatomic, strong)UIColor *defalutColor;
/// 当不支持渐变颜色时使用该颜色
@property (nonatomic, strong)UIColor *progressColor;
/// 设置进度条的高度
@property (nonatomic, assign)CGFloat  progressHeight;
///  进度条的圆角半径
@property (nonatomic, assign)CGFloat  progressRadius;
///  当前的进度值
@property (nonatomic, assign)CGFloat  progressValue;
@end

NS_ASSUME_NONNULL_END
