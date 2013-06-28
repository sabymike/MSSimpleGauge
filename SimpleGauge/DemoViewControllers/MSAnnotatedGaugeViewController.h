//
//  AnnotatedGaugeViewController.h
//  SimpleGauge
//
//  Created by Mike Sabatini on 6/20/13.
//  Copyright (c) 2013 Mike Sabatini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSGaugeViewController.h"
#import "MSAnnotatedGauge.h"

@interface MSAnnotatedGaugeViewController : MSGaugeViewController
@property (nonatomic) MSAnnotatedGauge *annotatedGauge;
@end
