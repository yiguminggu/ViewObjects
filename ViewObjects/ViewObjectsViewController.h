//
//  ViewObjectsViewController.h
//  ViewObjects
//
//  Created by 谷 铭 on 13-12-23.
//  Copyright (c) 2013年 guming. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewObjectsViewController : UIViewController
{
    IBOutlet UITextField *userNameField;
    IBOutlet UITextField *passwordField;
    IBOutlet UISwitch *remember;
    IBOutlet UILabel *rememberMessage;
}
@property (nonatomic,retain) UITextField *userNameField;
@property (nonatomic,retain) UITextField *passwordField;
@property (nonatomic,retain) UISwitch *remember;
@property (nonatomic,retain) UILabel *rememberMessage;

//关闭键盘
-(IBAction) textFieldDoneEdition:(id)sender;
//点击背景关闭键盘
-(IBAction) closeKeyBoard:(id)sender;
//显示隐藏记住密码提示信息
-(IBAction)displayRememberMessage:(id)sender;
//登陆
-(IBAction)login:(id)sender;
@end
