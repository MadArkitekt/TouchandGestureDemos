//
//  PanView.m
//  PanImage
//
//  Created by Edward Salter on 8/30/14.
//  Copyright (c) 2014 Edward Salter. All rights reserved.
//

#import "PanView.h"
@interface PanView() <UIGestureRecognizerDelegate>
@end
@implementation PanView
{
    CGPoint prevLoc;
}
- (instancetype)initWithImage:(UIImage *)image {
    self = [super initWithImage:image];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.userInteractionEnabled = true;
        UIPanGestureRecognizer *panRecog = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(handlePan:)];
        self.gestureRecognizers = @[panRecog];
            }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.superview bringSubviewToFront:self];
    prevLoc = self.center;
}

- (void)handlePan:(UIPanGestureRecognizer*)uiPanGestRec {
    
    NSLog(@"Old center.x: %f", self.center.x);
    NSLog(@"Old center.y: %f", self.center.y);

    if (uiPanGestRec.state == UIGestureRecognizerStateEnded) {
        
        //Update center via transform
        CGPoint newCenter = CGPointMake(self.center.x + self.transform.tx, self.center.y + self.transform.ty);
        self.center = newCenter;
        
        
        NSLog(@"New center.x: %f", newCenter.x);
        NSLog(@"New center.y: %f", newCenter.y);
        
        //Reset self.transform ()
        CGAffineTransform transform = self.transform;
        NSLog(@"Pre-reset transform x = %f", self.transform.tx);
        NSLog(@"Pre-reset transform y = %f", self.transform.ty);
        transform.tx = 0.0f;
        transform.ty = 0.0f;
        self.transform = transform;
        NSLog(@"Post-reset transform x = %f", self.transform.tx);
        NSLog(@"Post-reset transform y = %f", self.transform.ty);

        return;
    }
    
    //Assigning translation results to self.transform vicariously using transform
    CGPoint translation = [uiPanGestRec translationInView:self.superview];
    CGAffineTransform transform = self.transform;
    transform.tx = translation.x;
    transform.ty = translation.y;
    self.transform = transform;
    
    NSLog(@"transform x = %f", self.transform.tx);
    NSLog(@"transform y = %f", self.transform.ty);
}


@end
