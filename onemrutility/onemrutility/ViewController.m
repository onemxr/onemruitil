//
//  ViewController.m
//  onemrutility
//
//  Created by Will on 16/4/25.
//  Copyright © 2016年 MM. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+MBProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self showTextHUDWithText:@"Hello"];
    UILabel *label = [[UILabel alloc]init];
    label.frame = CGRectMake(0, 0, 50, 20);
    label.text = @"Hello";
    [self showCustomViewHUDWithView:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
