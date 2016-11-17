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
+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)delete:(NSString *)service;
@end
