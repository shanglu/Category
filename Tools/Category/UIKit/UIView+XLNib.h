//
//  UIView+XLNib.h
//  Tools
//
//  Created by 路 on 2020/4/17.
//  Copyright © 2020 路. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (XLNib)
+ (UINib *)xl_loadNib;
+ (UINib *)xl_loadNibNamed:(NSString*)nibName;
+ (UINib *)xl_loadNibNamed:(NSString*)nibName bundle:(NSBundle *)bundle;

+ (instancetype)xl_loadInstanceFromNib;
+ (instancetype)xl_loadInstanceFromNibWithName:(NSString *)nibName;
+ (instancetype)xl_loadInstanceFromNibWithName:(NSString *)nibName owner:(nullable id)owner;
+ (instancetype)xl_loadInstanceFromNibWithName:(NSString *)nibName owner:(nullable id)owner bundle:(NSBundle *)bundle;

@end

NS_ASSUME_NONNULL_END
