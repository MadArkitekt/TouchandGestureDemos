//
//  UIImageView+DragImage.m
//  DraggableView
//
//  Created by Edward Salter on 8/1/14.
//  Copyright (c) 2014 Edward Salter. All rights reserved.
//

#import "UIImageView+DragImage.h"

@implementation UIImageView (DragImage)
{
    CGPoint startLocation;
}

-(instancetype)initWithImage:(UIImage *)image
{
    self = [super initWithImage:[UIImage imageNamed:@"orangeFlower.png"]];
    if (self) {
        self.userInteractionEnabled = YES;
    }
        
}

@end
