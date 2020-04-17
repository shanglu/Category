//
//  UIApplication+XLApp.h
//  Tools
//
//  Created by 路 on 2020/4/17.
//  Copyright © 2020 路. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIApplication (XLApp)

/// App名称
+ (NSString *)xl_appName;

/// App budleId
+ (NSString *)xl_bundleId;

/// App版本号
+ (NSString *)xl_version;

/// App build版本号
+ (NSString *)xl_build;
@end

NS_ASSUME_NONNULL_END
