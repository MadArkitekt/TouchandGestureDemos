//
//  DragImgVw.m
//  Touch And Gesture Demo
//
//  Created by MadArkitekt on 7/5/14.
//  Copyright (c) 2014 The IronhEaD Initiative. All rights reserved.
//

#import "DragImgVw.h"
#import <QuartzCore/QuartzCore.h>
@implementation DragImgVw
{
    CGPoint startCoord;
}
- (instancetype)initWithImage:(UIImage *)image
{
    self = [super initWithImage:image];
    if (self)
    {
        self.userInteractionEnabled = YES;
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{   //record touch location offset
    startCoord = [[touches anyObject] locationInView:self];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{   //account for offset
    CGPoint pt = [[touches anyObject] locationInView:self];
    
    float dx = pt.x - startCoord.x;
    float dy = pt.y - startCoord.y;
    
    //set new center
    CGPoint newCenter = CGPointMake(self.center.x + dx, self.center.y + dy);
    
    self.center = newCenter;
}

@end
