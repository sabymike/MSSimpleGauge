//
//  MSRangeGaugeViewController.m
//  SimpleGauge
//
//  Created by Mike Sabatini on 6/20/13.
//  Copyright (c) 2013 Mike Sabatini. All rights reserved.
//

#import "MSRangeGaugeViewController.h"

@interface MSRangeGaugeViewController ()

@end

@implementation MSRangeGaugeViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.inclusiveGauge = [[MSRangeGauge alloc] initWithFrame:CGRectMake(0, 0, 150, 90)];
    self.inclusiveGauge.minValue = 0;
    self.inclusiveGauge.maxValue = 100;
    self.inclusiveGauge.upperRangeValue = 80;
    self.inclusiveGauge.lowerRangeValue = 20;
    self.inclusiveGauge.value = 50;
    self.inclusiveGauge.rangeFillColor = [UIColor colorWithRed:.41 green:.76 blue:.73 alpha:1];
    [self.view addSubview:self.inclusiveGauge];
    
    self.exclusiveGauge = [[MSRangeGauge alloc] initWithFrame:CGRectMake(170, 0, 150, 90)];
    self.exclusiveGauge.minValue = 0;
    self.exclusiveGauge.maxValue = 100;
    self.exclusiveGauge.upperRangeValue = 80;
    self.exclusiveGauge.lowerRangeValue = 20;
    self.exclusiveGauge.value = 30;
    self.exclusiveGauge.backgroundArcFillColor = [UIColor colorWithRed:.41 green:.76 blue:.73 alpha:1];
    self.exclusiveGauge.backgroundArcStrokeColor = [UIColor colorWithRed:.41 green:.76 blue:.73 alpha:1];
    self.exclusiveGauge.rangeFillColor = [UIColor colorWithRed:.82 green:.82 blue:.82 alpha:1];
    [self.view addSubview:self.exclusiveGauge];
    
    self.gauges = @[self.inclusiveGauge, self.exclusiveGauge];
}

@end
