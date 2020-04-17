//
//  UIScrollView+XLEmpty.h
//  Tools
//
//  Created by 路 on 2020/4/17.
//  Copyright © 2020 路. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XLEmptyView.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^ClickBlock)(void);
@interface UIScrollView (XLEmpty)
@property (nonatomic, strong) XLEmptyView *xl_emptyView;


/// 展示占位图
/// @param icon 图片
/// @param text 文字
/// @param title 按钮文字
/// @param block 按钮点击
- (void)showIcon:(NSString *)icon text:(NSString *)text buttonTitle:(NSString *)title block:(ClickBlock)block;

- (void)hide;
@end

NS_ASSUME_NONNULL_END
