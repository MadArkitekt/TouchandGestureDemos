//
//  DRIImageView.m
//  DraggableImage
//
//  Created by Edward Salter on 8/1/14.
//  Copyright (c) 2014 Edward Salter. All rights reserved.
//

#import "DRIImageView.h"

@implementation DRIImageView
{
    CGPoint startLocation;
}

- (instancetype)initWithImage:(UIImage *)image
{
    self = [super initWithImage:image];
    if (self) {
        self.userInteractionEnabled = YES;
    }
    return self;
}

-   (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    startLocation = [[touches anyObject] locationInView:self];
    [self.superview bringSubviewToFront:self];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    CGPoint pt = [[touches anyObject] locationInView:self];
	float dx = pt.x - startLocation.x;
	float dy = pt.y - startLocation.y;
	CGPoint newcenter = CGPointMake(self.center.x + dx, self.center.y + dy);
	self.center = newcenter;
}

@end
