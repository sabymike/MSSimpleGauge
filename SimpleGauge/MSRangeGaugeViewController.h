//
//  MSRangeGaugeViewController.h
//  SimpleGauge
//
//  Created by Mike Sabatini on 6/20/13.
//  Copyright (c) 2013 Mike Sabatini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSGaugeViewController.h"
#import "MSRangeGauge.h"

@interface MSRangeGaugeViewController : MSGaugeViewController
@property (nonatomic) MSRangeGauge *inclusiveGauge;
@property (nonatomic) MSRangeGauge *exclusiveGauge;
@end
