//
//  BaseViewController.m
//  Tarotarot
//
//  Created by 翟冰洁 on 14-11-30.
//  Copyright (c) 2014年 翟冰洁. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:NO];
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 500)];
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeToRight)];
    [swipe setDirection:UISwipeGestureRecognizerDirectionRight];
    [view addGestureRecognizer:swipe];
    [self.view addSubview:view];
}

- (void)swipeToRight {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
