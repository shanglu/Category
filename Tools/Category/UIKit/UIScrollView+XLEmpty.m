//
//  UIScrollView+XLEmpty.m
//  Tools
//
//  Created by 路 on 2020/4/17.
//  Copyright © 2020 路. All rights reserved.
//

#import "UIScrollView+XLEmpty.h"
#import <objc/runtime.h>

// 定义关联的key
static const char *emptyViewkey = "emptyViewkey";

@implementation UIScrollView (XLEmpty)

- (XLEmptyView *)xl_emptyView
{
    return objc_getAssociatedObject(self, &emptyViewkey);
}

- (void)setXl_emptyView:(XLEmptyView *)xl_emptyView
{
    objc_setAssociatedObject(self, &emptyViewkey, xl_emptyView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)showIcon:(NSString *)icon text:(NSString *)text buttonTitle:(NSString *)title block:(ClickBlock)block
{
    if (!self.xl_emptyView)
    {
        XLEmptyView *emptyView = [XLEmptyView xl_loadInstanceFromNib];
        emptyView.frame = self.frame;
        [self addSubview:emptyView];
        self.xl_emptyView = emptyView;
    }
    [self.xl_emptyView showIcon:icon text:text buttonTitle:title];
    self.xl_emptyView.hidden = NO;
    self.xl_emptyView.block = ^{
        block();
    };
}

- (void)hide
{
    if (self.xl_emptyView)
    {
        self.xl_emptyView.hidden = YES;
    }
}

@end
