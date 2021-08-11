//
//  KXViewController.m
//  KXBaseTool
//
//  Created by xuxi on 12/30/2020.
//  Copyright (c) 2020 xuxi. All rights reserved.
//

#import "KXViewController.h"
#import <KXBaseTool.h>




@interface KXViewController ()
@property (nonatomic, assign)KXLineProgressView  *progressView;
@end

@implementation KXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    KXLineProgressView *progressView = [[KXLineProgressView alloc] init];
    progressView.frame = CGRectMake(0, 0, 200, 40);
    progressView.center = self.view.center;
    [self.view addSubview:progressView];
    self.progressView = progressView;
    
    UISlider *slider = [[UISlider alloc] init];
    slider.frame = CGRectMake(0, 0, 200, 40);
    slider.center = CGPointMake(self.view.center.x, progressView.center.y + 30);
    [self.view addSubview:slider];
    [slider addTarget:self action:@selector(didChangeValue:) forControlEvents:UIControlEventValueChanged];

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.progressView.progressValue = 0.7;
}

- (void)didChangeValue:(UISlider *)slider
{
    self.progressView.progressValue = slider.value;
}
@end
