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
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    startCoord = [[touches anyObject]locationInView:self];
    [self.superview bringSubviewToFront:self];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    CGPoint point = [[touches anyObject]locationInView:self];
    float dx = point.x - startCoord.x;
    NSLog(@"Touch.x: %f",point.x);
    NSLog(@"Delta.x: %f",dx);
    
    float dy = point.y - startCoord.y;
    NSLog(@"Touch.y: %f",point.y);
    NSLog(@"Delta.y: %f",dy);
    
    CGPoint centerNew = CGPointMake(self.center.x + dx, self.center.y + dy);
    self.center = centerNew;
}

@end
