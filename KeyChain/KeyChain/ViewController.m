//
//  ViewController.m
//  KeyChain
//
//  Created by weiyi on 16/11/17.
//  Copyright © 2016年 wy. All rights reserved.
//

#import "ViewController.h"
#import "YYKeyChain.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)saveInfoAction:(UIButton *)sender {
    NSString *password = @"1234567890";
    NSMutableDictionary *userNamePwdKVPairs = [NSMutableDictionary dictionary];
    [userNamePwdKVPairs setObject:password forKey:KEY_PASSWORD];
    [YYKeyChain keyChainSave:KEY_USERNAME_PASSWORD data:userNamePwdKVPairs];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"" message:@"保存成功" delegate:nil cancelButtonTitle:@"知道了" otherButtonTitles:nil];
    [alertView show];
    
}
// 测验方式可在运行之后，点击save info按钮,然后卸载app，再次运行，直接点击get info按钮；
- (IBAction)getinfo:(UIButton *)sender {

    NSMutableDictionary *userNamePwdKVPairs = (NSMutableDictionary *)[YYKeyChain keyChainLoad:KEY_USERNAME_PASSWORD];
    NSString *password = [userNamePwdKVPairs objectForKey:KEY_PASSWORD];
    NSLog(@"password == %@", [userNamePwdKVPairs objectForKey:KEY_PASSWORD]);
    if (password.length != 0) {
        password = [NSString stringWithFormat:@"密码：%@", password];
    }else{
        password = @"密码获取失败!";
    }
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"" message:password delegate:nil cancelButtonTitle:@"知道了" otherButtonTitles:nil];
    [alertView show];
    
}

- (IBAction)deleteinfo:(UIButton *)sender {
    [YYKeyChain keyChainDelete:KEY_USERNAME_PASSWORD];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"" message:@"删除成功" delegate:nil cancelButtonTitle:@"知道了" otherButtonTitles:nil];
    [alertView show];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
