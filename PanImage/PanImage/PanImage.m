//
//  PanImage.m
//  PanImage
//
//  Created by MadArkitekt on 7/5/14.
//  Copyright (c) 2014 The IronhEaD Initiative. All rights reserved.
//

#import "PanImage.h"

@implementation PanImage
{
    CGPoint previousLoc;
}

- (instancetype)initWithImage:(UIImage *)image
{
    self = [super initWithImage:image];
    if (self)
    {
        self.userInteractionEnabled = YES;
        
        UIPanGestureRecognizer *pgr = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(handlePan:)];
        
        self.gestureRecognizers = @[pgr];
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.superview bringSubviewToFront:self];
    
    previousLoc = self.center;
}

- (void)handlePan:(UIPanGestureRecognizer *)gestureRecognizer
{
    CGPoint translation = [gestureRecognizer translationInView:self.superview];
    NSLog(@"translation.x: %f tranlsation.y: %f",translation.x,translation.y);
    
    self.center = CGPointMake(previousLoc.x + translation.x, previousLoc.y + translation.y);
    NSLog(@"self.center.x: %f self.center.y: %f",self.center.x,self.center.y);
    
}

@end
