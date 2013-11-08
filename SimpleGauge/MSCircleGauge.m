//
//  MSCircleGauge.m
//  MSSimpleGauge
//
//  Created by Mike Sabatini on 11/8/13.
//  Copyright (c) 2013 ParallelBoxes. All rights reserved.
//

#import "MSCircleGauge.h"
#import "MSCircleArcLayer.h"

@implementation MSCircleGauge
- (void)setup
{
    [super setup];
    
    CGSize size = self.frame.size;
    [self centerNeedleAtPoint:CGPointMake(size.width/2, size.height/2)];
}

- (CALayer*)createArcLayer
{
    return [MSCircleArcLayer layer];
}
@end
