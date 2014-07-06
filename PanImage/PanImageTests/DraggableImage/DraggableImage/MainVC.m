//
//  MainVC.m
//  Touch And Gesture Demo
//
//  Created by MadArkitekt on 7/5/14.
//  Copyright (c) 2014 The IronhEaD Initiative. All rights reserved.
//

#import "MainVC.h"
#import "DragImgVw.h"
@interface MainVC ()

@end

@implementation MainVC

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        DragImgVw *dragV = [[DragImgVw alloc]initWithImage:[UIImage imageNamed:@"blur.jpg"]];
        [self.view addSubview:dragV];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)prefersStatusBarHidden {return YES;}

@end
