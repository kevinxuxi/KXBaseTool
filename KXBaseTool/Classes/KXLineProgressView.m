//
//  KXLineProgressView.m
//  KXBaseTool
//
//  Created by kings on 2021/1/4.
//

#import "KXLineProgressView.h"
#import "UIColor+KXColorExtension.h"
@interface KXLineProgressView ()
@property (nonatomic, weak)CALayer *barLayer;
@property (nonatomic, weak)CALayer *gradientLayer;
@property (nonatomic, weak)CALayer *maskLayer;
@end
@implementation KXLineProgressView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        // 初始化数据
        [self initDataSource];
        // 初始化界面
        [self setupInterfaceWithFrame:frame];
    }
    return self;
}

#pragma mark - 初始化数据
- (void)initDataSource
{
    _colorArray =  @[(id)[UIColor orangeColor].CGColor,
                     (id)[UIColor greenColor].CGColor,
                     (id)[UIColor blueColor].CGColor,
                     (id)[UIColor redColor].CGColor
                    ];
    _colorLocationArray = @[@0.1,@0.4,@0.7,@1];
    _defalutColor = [UIColor grayColor];
    _progressColor = [UIColor redColor];
    _needGradient = YES;
    _progressHeight = 6;
    _progressRadius = 3;
}

#pragma mark - 初始化界面
- (void)setupInterfaceWithFrame:(CGRect)frame
{
    // 进度条barLayer
    CALayer *barLayer = [CALayer layer];
    barLayer.frame = CGRectMake(0, 0, frame.size.width, _progressHeight);
    barLayer.cornerRadius = _progressRadius;
    barLayer.backgroundColor = self.defalutColor.CGColor;
    [self.layer addSublayer:barLayer];
    self.barLayer = barLayer;
    
    // 渐变进度条
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.cornerRadius = _progressRadius;
    gradientLayer.frame = barLayer.frame;
    if (_needGradient) {
        gradientLayer.colors = _colorArray;
        gradientLayer.locations = _colorLocationArray;
    }else{
        gradientLayer.colors = @[(id)_progressColor.CGColor,(id)_progressColor.CGColor];
        gradientLayer.locations = @[@0.0,@1.0];
    }
    gradientLayer.startPoint = CGPointMake(0, 0.5);
    gradientLayer.endPoint = CGPointMake(1, 0.5);
   
    // 蒙版
    CALayer *maskLayer = [CALayer layer];
    maskLayer.backgroundColor = [UIColor blackColor].CGColor;
    maskLayer.frame = CGRectMake(0, 0, 0, _progressHeight);
    maskLayer.cornerRadius = _progressRadius;
    gradientLayer.mask = maskLayer;
    self.maskLayer = maskLayer;
    
    [self.layer addSublayer:gradientLayer];
    self.gradientLayer = gradientLayer;
}

- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    self.barLayer.frame = CGRectMake(0, 0, frame.size.width, _progressHeight);
    self.gradientLayer.frame = CGRectMake(0, 0,frame.size.width, _progressHeight);
    self.maskLayer.frame = CGRectMake(0, 0, frame.size.width*_progressValue, _progressValue);
}

- (void)setProgressValue:(CGFloat)progressValue
{
    _progressValue = progressValue;
    if (_progressValue < 0) {
        _progressValue = 0.0;
    }
    if (_progressValue > 1.0) {
        _progressValue = 1.0;
    }
    [CATransaction begin];
    [CATransaction setDisableActions:YES];
    [CATransaction setAnimationDuration:3.0];
    [CATransaction setAnimationTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    self.maskLayer.frame = CGRectMake(0, 0, self.frame.size.width*_progressValue, _progressHeight);
    [CATransaction commit];
}
@end
