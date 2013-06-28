//
//  MSSimpleGaugeViewControoler.h
//  SimpleGauge
//
//  Created by Mike Sabatini on 6/20/13.
//  Copyright (c) 2013 Mike Sabatini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSGaugeViewController.h"
#import "MSSimpleGauge.h"

@interface MSSimpleGaugeViewController : MSGaugeViewController
@property (nonatomic) MSSimpleGauge *plainGauge;
@property (nonatomic) MSSimpleGauge *gradientGauge;
@property (nonatomic) MSSimpleGauge *minimalGauge;
@property (nonatomic) MSSimpleGauge *bigGauge;
@end
