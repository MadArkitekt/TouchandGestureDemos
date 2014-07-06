//
//  MainVC.m
//  PanImage
//
//  Created by MadArkitekt on 7/5/14.
//  Copyright (c) 2014 The IronhEaD Initiative. All rights reserved.
//

#import "MainVC.h"
#import "PanImage.h"
@interface MainVC ()

@end

@implementation MainVC

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        PanImage *panImage = [[PanImage alloc]initWithImage:[UIImage imageNamed:@"blur.png"]];
        [self.view addSubview:panImage];
        
        [self.view setBackgroundColor:[UIColor blackColor]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
