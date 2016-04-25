//
//  UIViewController+MBProgressHUD.m
//  onemrutility
//
//  Created by Will on 16/4/25.
//  Copyright © 2016年 MM. All rights reserved.
//

#import "UIViewController+MBProgressHUD.h"

@implementation UIViewController (MBProgressHUD)

- (void)showHUD
{
    [self showLoadingHUDWithText:nil];
}

- (void)showLoadingHUD
{
    [self showLoadingHUDWithText:@"加载中..."];
}

- (MBProgressHUD *)showLoadingHUDWithText:(NSString *)text
{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.labelText = text;
    return hud;
}

- (MBProgressHUD *)showRoundProgressLoadingHUD
{
    return [self showRoundProgressLoadingHUDWithText:nil];
}

- (MBProgressHUD *)showLinerProgressLoadingHUD
{
    return [self showLinerProgressLoadingHUDWithText:nil];
}

- (MBProgressHUD *)showRingProgressLoadingHUD
{
    return [self showRingProgressLoadingHUDWithText:nil];
}

- (MBProgressHUD *)showRoundProgressLoadingHUDWithText:(NSString *)text;
{
    MBProgressHUD *hud = [self showLoadingHUDWithText:text];
    hud.mode = MBProgressHUDModeDeterminate;
    return hud;
}

- (MBProgressHUD *)showLinerProgressLoadingHUDWithText:(NSString *)text
{
    MBProgressHUD *hud = [self showLoadingHUDWithText:text];
    hud.mode = MBProgressHUDModeDeterminateHorizontalBar;
    return hud;
}

- (MBProgressHUD *)showRingProgressLoadingHUDWithText:(NSString *)text
{
    MBProgressHUD *hud = [self showLoadingHUDWithText:text];
    hud.mode = MBProgressHUDModeAnnularDeterminate;
    return hud;
}

- (void)showTextHUDWithText:(NSString *)text
{
    MBProgressHUD *hud = [self showLoadingHUDWithText:text];
    hud.mode = MBProgressHUDModeText;
    hud.margin = 10.f;
}

- (MBProgressHUD *)showCustomViewHUDWithView:(UIView*)view withText:(NSString*)text
{
    MBProgressHUD *hud = [[MBProgressHUD alloc] initWithView:self.view];
    [self.view addSubview:hud];
    hud.customView = view;
    hud.mode = MBProgressHUDModeCustomView;
    hud.labelText = text;
    [hud show:YES];
    return hud;
}

- (void)hideAllHUD
{
    [MBProgressHUD hideHUDForView:self.view animated:YES];
}

#pragma mark -
#pragma mark ------------ Private ---------------


@end
