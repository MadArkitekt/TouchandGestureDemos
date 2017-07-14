//
//  DragView.m
//  DragView
//
//  Created by Edward Salter on 8/26/14.
//  Copyright (c) 2014 Edward Salter. All rights reserved.
//

#import "DragView.h"

@implementation DragView {
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

#pragma mark TOUCH-RELATED

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    startCoord = [[touches anyObject]locationInView:self];
    [self.superview bringSubviewToFront:self];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    CGPoint point = [[touches anyObject]locationInView:self];
    float dx = point.x - startCoord.x;
    
    NSLog(@"START X :: %f", startCoord.x);
    NSLog(@"TOUCH X :: %f",point.x);
    NSLog(@"DELTA X :: %f",dx);
    NSLog(@"ORIGIN X :: %f", self.bounds.origin.x);

    float dy = point.y - startCoord.y;
    
    NSLog(@"START Y :: %f", startCoord.y);
    NSLog(@"TOUCH Y :: %f",point.y);
    NSLog(@"DELTA Y :: %f",dy);
    NSLog(@"ORIGIN Y :: %f", self.bounds.origin.y);
    
    CGPoint centerNew = CGPointMake(self.center.x + dx, self.center.y + dy);
    self.center = centerNew;
}

@end
