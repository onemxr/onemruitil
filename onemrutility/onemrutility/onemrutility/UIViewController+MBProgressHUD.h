//
//  UIViewController+MBProgressHUD.h
//  onemrutility
//
//  Created by Will on 16/4/25.
//  Copyright © 2016年 MM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"

@interface UIViewController (MBProgressHUD)

/**
 *  在Controller的视图上添加一个HUD,HUD没有提示语。
 *  如果Controller是UITableviewController，则会加在Tableview上。
 */
- (void)showHUD;

/**
 *  在Controller的视图上添加一个加载中的HUD，HUD的默认提示语为“加载中”;
 *  如果Controller是UITableviewController，则会加在Tableview上。
 */
- (void)showLoadingHUD;

/**
 *  在Controller的视图上添加一个可以自定义提示语的HUD;
 *  如果Controller是UITableviewController，则会加在Tableview上。
 *
 *  @param text 需要显示的提示语
 */
- (MBProgressHUD *)showLoadingHUDWithText:(NSString *)text;

/**
 *  在Controller的视图上添加一个圆形的HUD，无默认提示语；
 *  获取HUD对象后，传入progress，以更新当前进度。
 *
 *  @return 返回HUD对象
 */
- (MBProgressHUD *)showRoundProgressLoadingHUD;

/**
 *  在Controller的视图上添加一个水平Bar形状的HUD，无默认提示语；
 *  获取HUD对象后，传入progress，以更新当前进度。
 *
 *  @return 返回HUD对象
 */
- (MBProgressHUD *)showLinerProgressLoadingHUD;

/**
 *  在Controller的视图上添加一个环形的HUD，无默认提示语；
 *  获取HUD对象后，传入progress，以更新当前进度。
 *
 *  @return 返回HUD对象
 */
- (MBProgressHUD *)showRingProgressLoadingHUD;

/**
 *  在Controller的视图上添加一个圆形的HUD.
 *  获取HUD对象后，传入progress，以更新当前进度。
 *
 *  @param text 提示语
 *
 *  @return 返回HUD对象
 */
- (MBProgressHUD *)showRoundProgressLoadingHUDWithText:(NSString *)text;

/**
 *  在Controller的视图上添加一个水平Bar形状的HUD.
 *  获取HUD对象后，传入progress，以更新当前进度。
 *
 *  @param text 提示语
 *
 *  @return 返回HUD对象
 */
- (MBProgressHUD *)showLinerProgressLoadingHUDWithText:(NSString *)text;

/**
 *  在Controller的视图上添加一个环形的HUD.
 *  获取HUD对象后，传入progress，以更新当前进度。
 *
 *  @param text 提示语
 *
 *  @return 返回HUD对象
 */
- (MBProgressHUD *)showRingProgressLoadingHUDWithText:(NSString *)text;

/**
 *  在Controller的视图上添加一个纯文字的HUD。
 *
 *  @param text 提示语
 */
- (void)showTextHUDWithText:(NSString *)text;

/**
 *  在Controller的视图中添加一个自定义View的HUD。
 *
 *  @param view 自定义的view
 *  @param text 提示语
 *
 *  @return 返回HUD对象
 */
- (MBProgressHUD *)showCustomViewHUDWithView:(UIView*)view withText:(NSString*)text;

/**
 *  隐藏当前Controller视图上的所有HUD。
 */
- (void)hideAllHUD;

@end
