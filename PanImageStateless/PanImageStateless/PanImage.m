//
//  PanImage.m
//  PanImageStateless
//
//  Created by MadArkitekt on 7/5/14.
//  Copyright (c) 2014 The IronhEaD Initiative. All rights reserved.
//

#import "PanImage.h"
#import "Utility.h"
#import <QuartzCore/QuartzCore.h>

@implementation PanImage

- (instancetype)initWithImage:(UIImage *)anImage
{
    self = [super initWithImage:anImage];
    if (self) {
        self.userInteractionEnabled = YES;
        UIPanGestureRecognizer *panRecognizer = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(handlePan:)];
        self.gestureRecognizers = @[panRecognizer];
    }
    return self;
}


- (void)handlePan:(UIPanGestureRecognizer *)gestureRecognizer
{
    if (gestureRecognizer.state == UIGestureRecognizerStateEnded)
    {
        //Log below demonstrates if() statement above is functional, as self.center.x/y won't set until touchUp
        //Recognizing gestureStateEnded rather than touchesBegan prevents constant stream of aggregate vectors
        
        NSLog(@"newCenter.x: %f  newCenter.y: %f", self.center.x, self.center.y);
        
        CGPoint newCenter = CGPointMake(self.center.x + self.transform.tx, self.center.y + self.transform.ty);
        self.center = newCenter;
    

        CGAffineTransform theTransform = self.transform;
        theTransform.tx = 0.0f;
        theTransform.ty = 0.0f;
        self.transform = theTransform;
        
        
        NSLog(@"self.center.x: %f  self.center.y: %f", self.center.x, self.center.y);
        NSLog(@"frame.x: %f  frame.y: %f", self.frame.origin.x, self.frame.origin.y);
        NSLog(@"bounds.x: %f  bounds.y: %f", self.bounds.origin.x, self.bounds.origin.y);
        NSLog(@"superView.frame.x: %f  superView.frame.y: %f", self.superview.frame.origin.x, self.superview.frame.origin.y);
        return;
    }
    
    CGPoint translation = [gestureRecognizer translationInView:self.superview];
    
    CGAffineTransform theTransform = self.transform;
    theTransform.tx = translation.x;
    theTransform.ty = translation.y;
    
    NSLog(@"transform.tx: %f  transform.ty: %f", theTransform.tx, theTransform.ty);
    
    self.transform = theTransform;
}

@end



//Need to show that stateless via NSLog