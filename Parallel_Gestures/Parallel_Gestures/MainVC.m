//
//  MainVC.m
//  Parallel_Gestures
//
//  Created by MadArkitekt on 7/5/14.
//  Copyright (c) 2014 The IronhEaD Initiative. All rights reserved.
//

#import "MainVC.h"
#import "MultiGestureIV.h"
@interface MainVC ()

@end

@implementation MainVC

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        MultiGestureIV *gesturesView = [[MultiGestureIV alloc]initWithImage:[UIImage imageNamed:@"Still_Smiling.jpg"]];
        [self.view addSubview:gesturesView];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
