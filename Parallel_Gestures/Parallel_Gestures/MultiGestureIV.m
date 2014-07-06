//
//  MultiGestureIV.m
//  Parallel_Gestures
//
//  Created by MadArkitekt on 7/5/14.
//  Copyright (c) 2014 The IronhEaD Initiative. All rights reserved.
//

#import "MultiGestureIV.h"

@implementation MultiGestureIV

- (instancetype)initWithImage:(UIImage *)image
{
    self = [super initWithImage:(UIImage *)];
    if (self) {
        
        self.userInteractionEnabled = YES;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
