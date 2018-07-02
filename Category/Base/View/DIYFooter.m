
//
//  DIYFooter.m
//  MoneyLove
//
//  Created by Mac on 2018/6/28.
//  Copyright © 2018年 搜影科技. All rights reserved.
//

#import "DIYFooter.h"
#import "TableViewFooterView.h"

@interface DIYFooter()
@property (weak, nonatomic) UILabel *label;
@property (weak, nonatomic) UISwitch *s;
@property (weak, nonatomic) TableViewFooterView *footerView;
@end


@implementation DIYFooter

#pragma mark - 重写方法
#pragma mark 在这里做一些初始化配置（比如添加子控件）
- (void)prepare
{
    [super prepare];
    
    // 设置控件的高度
    self.mj_h = 40;
    
    // footerView
    TableViewFooterView *footerView = [TableViewFooterView loadFromNib];
    self.footerView.frame = CGRectMake(0, 0, kScreen_W, 40);
    [self addSubview:footerView];
    self.footerView = footerView;
//    self.footerView.hidden = YES;
}

#pragma mark 在这里设置子控件的位置和尺寸
- (void)placeSubviews
{
    [super placeSubviews];
//    self.footerView.frame = self.frame;
    self.footerView.frame = CGRectMake(0, 0, kScreen_W, 40);
}

#pragma mark 监听scrollView的contentOffset改变
- (void)scrollViewContentOffsetDidChange:(NSDictionary *)change
{
    [super scrollViewContentOffsetDidChange:change];
    
}

#pragma mark 监听scrollView的contentSize改变
- (void)scrollViewContentSizeDidChange:(NSDictionary *)change
{
    [super scrollViewContentSizeDidChange:change];
    
}

#pragma mark 监听scrollView的拖拽状态改变
- (void)scrollViewPanStateDidChange:(NSDictionary *)change
{
    [super scrollViewPanStateDidChange:change];
    
}

#pragma mark 监听控件的刷新状态
- (void)setState:(MJRefreshState)state
{
    MJRefreshCheckState;
    
    switch (state) {
        case MJRefreshStateIdle:
            self.footerView.hidden = YES;
            break;
        case MJRefreshStateRefreshing:
            self.footerView.hidden = YES;
            break;
        case MJRefreshStateNoMoreData:
            self.footerView.hidden = NO;
            break;
        default:
            break;
    }
}
@end
