//
//  RootVC.m
//  PanImage
//
//  Created by Edward Salter on 8/30/14.
//  Copyright (c) 2014 Edward Salter. All rights reserved.
//

#import "RootVC.h"
#import "PanView.h"
@interface RootVC ()

@end

@implementation RootVC

- (instancetype)init {
    self = [super init];
    if (self) {
    }
    self.view.backgroundColor = [UIColor blackColor];
    
    
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    PanView *panView = [[PanView alloc]initWithImage:[UIImage imageNamed:@"orangeFlower"]];
    [self.view addSubview:panView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (BOOL)prefersStatusBarHidden {
    return true;
}

@end
