//
//  ViewObjectsViewController.m
//  ViewObjects
//
//  Created by 谷 铭 on 13-12-23.
//  Copyright (c) 2013年 guming. All rights reserved.
//

#import "ViewObjectsViewController.h"

@interface ViewObjectsViewController ()

@end

@implementation ViewObjectsViewController
@synthesize userNameField;
@synthesize passwordField;
@synthesize remember;
@synthesize rememberMessage;
-(IBAction) textFieldDoneEdition:(id)sender{
    [sender resignFirstResponder];
}
-(IBAction) closeKeyBoard:(id)sender{
    [userNameField resignFirstResponder];
    [passwordField resignFirstResponder];
}
-(IBAction)displayRememberMessage:(id)sender{
    UISwitch *rememberSwitch =sender;
    if (rememberSwitch.isOn)
    {
        [rememberMessage setHidden:NO];
    }
    else{
        [rememberMessage setHidden:YES];
    }
}
-(IBAction)login:(id)sender{
    NSString *message = @"";
    if ([userNameField.text length] < 1)
    {
        message =@"请填入用户名";
    }
    else if ([passwordField.text length] < 6)
    {
        message = @"密码至少6位";
    }
    else
    {
        message = @"登陆成功！";
    }
UIAlertView *al = [[UIAlertView alloc] initWithTitle:@"提示信息" message:message delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil];
[al show];


}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
