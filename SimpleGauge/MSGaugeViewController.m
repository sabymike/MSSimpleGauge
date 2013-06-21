//
//  MSGaugeViewController.m
//  SimpleGauge
//
//  Created by Mike Sabatini on 6/21/13.
//  Copyright (c) 2013 Mike Sabatini. All rights reserved.
//

#import "MSGaugeViewController.h"
#import "MSSimpleGauge.h"

@interface MSGaugeViewController ()

@end

@implementation MSGaugeViewController

- (IBAction)addTenPointsToGauges:(id)sender
{
    [self.gauges enumerateObjectsUsingBlock:^(MSSimpleGauge *gauge, NSUInteger idx, BOOL *stop) {
        [gauge setValue:gauge.value+10 animated:YES];
    }];
}

- (IBAction)removeTenPointsToGauges:(id)sender
{
    [self.gauges enumerateObjectsUsingBlock:^(MSSimpleGauge *gauge, NSUInteger idx, BOOL *stop) {
        [gauge setValue:gauge.value-10 animated:YES];
    }];
}

- (IBAction)fillGauges:(id)sender
{
    [self.gauges enumerateObjectsUsingBlock:^(MSSimpleGauge *gauge, NSUInteger idx, BOOL *stop) {
        [gauge setValue:gauge.maxValue animated:YES];
    }];
}

- (IBAction)resetGauges:(id)sender
{
    [self.gauges enumerateObjectsUsingBlock:^(MSSimpleGauge *gauge, NSUInteger idx, BOOL *stop) {
        [gauge setValue:gauge.minValue animated:YES];
    }];
}
@end
