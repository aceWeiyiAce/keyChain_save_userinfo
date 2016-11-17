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
    NSMutableDictionary *userNamePwdKVPairs = [NSMutableDictionary dictionary];
    [userNamePwdKVPairs setObject:@"1234567890" forKey:KEY_PASSWORD];
    [YYKeyChain save:KEY_USERNAME_PASSWORD data:userNamePwdKVPairs];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSMutableDictionary *userNamePwdKVPairs = (NSMutableDictionary *)[YYKeyChain load:KEY_USERNAME_PASSWORD];
    NSLog(@"password == %@", [userNamePwdKVPairs objectForKey:KEY_PASSWORD]);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
