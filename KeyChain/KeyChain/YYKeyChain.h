//
//  YYKeyChain.h
//  KeyChain
//
//  Created by weiyi on 16/11/17.
//  Copyright © 2016年 wy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Security/Security.h>
#define KEY_PASSWORD @"www.wyzhoubian.com.password"
#define KEY_USERNAME_PASSWORD @"www.wyzhoubian.com.usernamepassword"
@interface YYKeyChain : NSObject
/** 保存数据
 *    1.此种保存信息方式是保存在沙盒之外的，在此应用卸载完之后，重新下载也能取回所保存的信息
 *    2.若需彻底删除，需调用 keyChainDelete:(NSString *)service 方法
*/
+ (void)keyChainSave:(NSString *)service data:(id)data;
// 获取数据
+ (id)keyChainLoad:(NSString *)service;
// 删除数据
+ (void)keyChainDelete:(NSString *)service;
@end
