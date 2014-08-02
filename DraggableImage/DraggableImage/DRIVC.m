//
//  DRIVC.m
//  DraggableImage
//
//  Created by Edward Salter on 8/1/14.
//  Copyright (c) 2014 Edward Salter. All rights reserved.
//

#import "DRIVC.h"
#import "DRIImageView.h"
@implementation DRIVC
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        DRIImageView *dragV = [[DRIImageView alloc]initWithImage:[UIImage imageNamed:@"orangeFlower.png"]];
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
