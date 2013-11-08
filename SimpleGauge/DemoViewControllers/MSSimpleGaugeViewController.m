//
//  MSSimpleGaugeViewControoler.m
//  SimpleGauge
//
//  Created by Mike Sabatini on 6/20/13.
//  Copyright (c) 2013 Mike Sabatini. All rights reserved.
//

#import "MSSimpleGaugeViewController.h"
#import "MSGradientArcLayer.h"

@interface MSSimpleGaugeViewController ()

@end

@implementation MSSimpleGaugeViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.plainGauge = [[MSSimpleGauge alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
    self.plainGauge.value = 0;
    [self.view addSubview:self.plainGauge];
   
    self.gradientGauge = [[MSSimpleGauge alloc] initWithFrame:CGRectMake(170, 0, 150, 150)];
    self.gradientGauge.value = 0;
    self.gradientGauge.fillGradient = [MSGradientArcLayer defaultGradient];
    [self.view addSubview:self.gradientGauge];
    
    self.minimalGauge = [[MSSimpleGauge alloc] initWithFrame:CGRectMake(0, 220, 150, 150)];
    self.minimalGauge.value = 0;
    self.minimalGauge.backgroundArcFillColor = [UIColor whiteColor];
    self.minimalGauge.backgroundArcStrokeColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:.4];
    self.minimalGauge.fillArcFillColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:.4];
    self.minimalGauge.needleView.needleColor = [UIColor lightGrayColor];
    [self.view addSubview:self.minimalGauge];
    
    self.bigGauge = [[MSCircleGauge alloc] initWithFrame:CGRectMake(170, 220, 150, 150)];
    self.bigGauge.startAngle = -40;
    self.bigGauge.endAngle = 220;
    self.bigGauge.value = 0;
    [self.view addSubview:self.bigGauge];
    
    self.gauges = @[self.plainGauge, self.gradientGauge, self.minimalGauge, self.bigGauge];
}
@end
