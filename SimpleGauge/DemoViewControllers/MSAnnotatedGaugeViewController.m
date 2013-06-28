//
//  AnnotatedGaugeViewController.m
//  SimpleGauge
//
//  Created by Mike Sabatini on 6/20/13.
//  Copyright (c) 2013 Mike Sabatini. All rights reserved.
//

#import "MSAnnotatedGaugeViewController.h"

@interface MSAnnotatedGaugeViewController ()

@end

@implementation MSAnnotatedGaugeViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.annotatedGauge = [[MSAnnotatedGauge alloc] initWithFrame:CGRectMake(40, 40, 240, 180)];
    self.annotatedGauge.minValue = 0;
    self.annotatedGauge.maxValue = 100;
    self.annotatedGauge.titleLabel.text = @"How many widgets?";
    self.annotatedGauge.startRangeLabel.text = @"0 widgets";
    self.annotatedGauge.endRangeLabel.text = @"100 widgets";
    self.annotatedGauge.fillArcFillColor = [UIColor colorWithRed:.41 green:.76 blue:.73 alpha:1];
    self.annotatedGauge.fillArcStrokeColor = [UIColor colorWithRed:.41 green:.76 blue:.73 alpha:1];
    self.annotatedGauge.value = 0;
    [self.view addSubview:self.annotatedGauge];
    
    self.gauges = @[self.annotatedGauge];
}
@end
