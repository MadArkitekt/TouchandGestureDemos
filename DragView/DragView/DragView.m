//
//  DragView.m
//  DragView
//
//  Created by Edward Salter on 8/26/14.
//  Copyright (c) 2014 Edward Salter. All rights reserved.
//

#import "DragView.h"

@implementation DragView
{
    CGPoint startCoord;
}

-(instancetype)initWithImage:(UIImage *)image {
    self = [super initWithImage:image];
    if (self) {
        [self setUserInteractionEnabled:true];
        //White background shows bounds of dragView
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

#pragma mark TOUCHES_BEGAN
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    startCoord = [[touches anyObject]locationInView:self];
    [self.superview bringSubviewToFront:self];
}

#pragma mark TOUCHES_MOVED
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    CGPoint point = [[touches anyObject]locationInView:self];
    float dx = point.x - startCoord.x;
    
    NSLog(@"Start.x: %f", startCoord.x);
    NSLog(@"Touch.x: %f",point.x);
    NSLog(@"Delta.x: %f",dx);
    NSLog(@"Origin.x: %f", self.bounds.origin.x);

    float dy = point.y - startCoord.y;
    
    NSLog(@"Start.y: %f", startCoord.y);
    NSLog(@"Touch.y: %f",point.y);
    NSLog(@"Delta.y: %f",dy);
    NSLog(@"Origin.y: %f", self.bounds.origin.y);
    
    CGPoint centerNew = CGPointMake(self.center.x + dx, self.center.y + dy);
    self.center = centerNew;
}

@end
