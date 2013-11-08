//
//  MSCircleArcLayer.m
//  MSSimpleGauge
//
//  Created by Mike Sabatini on 11/8/13.
//  Copyright (c) 2013 ParallelBoxes. All rights reserved.
//

#import "MSCircleArcLayer.h"

@implementation MSCircleArcLayer
- (CGPoint)pointForArcEdge:(ArcEdge)edge andArcSide:(ArcSide)side
{
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
    CGFloat radius = width/2;
    if ( edge == ArcEdgeInner )
    {
        radius -= self.arcThickness;
    }
    
    CGFloat angle = self.startAngle;
    if ( side == ArcSideEnd )
    {
        angle = self.endAngle;
    }
    
    CGFloat x = width/2 + radius * cosf(angle);
    CGFloat y = height/2 + radius * sinf(angle);
    
    return CGPointMake(x,y);
}


- (void)drawArcInContext:(CGContextRef)ctx
{
    CGPoint center = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);
    CGFloat radius = self.bounds.size.width/2;
    
    CGContextBeginPath(ctx);
    
    // outer arc
    CGContextAddArc(ctx, center.x, center.y, radius, self.startAngle, self.endAngle, NO);
    
    // line down to the inner arc
    CGPoint innerArchEnd = [self pointForArcEdge:ArcEdgeInner andArcSide:ArcSideEnd];
    CGContextAddLineToPoint(ctx, innerArchEnd.x, innerArchEnd.y);
    
    // inner arc
    CGContextAddArc(ctx, center.x, center.y, radius-self.arcThickness, self.endAngle, self.startAngle, YES);
    
    // final connection back up to outer arc
    CGPoint outerArcStart = [self pointForArcEdge:ArcEdgeOuter andArcSide:ArcSideBegining];
    CGContextAddLineToPoint(ctx, outerArcStart.x, outerArcStart.y);
}
@end
