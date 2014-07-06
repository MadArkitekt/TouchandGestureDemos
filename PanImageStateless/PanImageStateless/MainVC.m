//
//  MainVC.m
//  PanImageStateless
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
    if (self) {
        PanImage *panImg = [[PanImage alloc]initWithImage:[UIImage imageNamed:@"blur.png"]];
        self.view.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:panImg];
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
