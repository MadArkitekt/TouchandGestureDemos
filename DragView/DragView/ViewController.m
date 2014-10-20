//
//  ViewController.m
//  DragView
//
//  Created by Edward Salter on 8/26/14.
//  Copyright (c) 2014 Edward Salter. All rights reserved.
//

#import "ViewController.h"
#import "DragView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DragView *dragView = [[DragView alloc]initWithImage:[UIImage imageNamed:@"orangeFlower.png"]];
    [self.view addSubview:dragView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
