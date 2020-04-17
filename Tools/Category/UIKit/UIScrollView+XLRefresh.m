//
//  UIScrollView+XLRefresh.m
//  Tools
//
//  Created by 路 on 2018/6/13.
//  Copyright © 2018年 路. All rights reserved.
//

#import "UIScrollView+XLRefresh.h"
#import <MJRefresh.h>

@implementation UIScrollView (XLRefresh)
- (void)addHeaderRefreshWithCallback:(void (^)(void))callback
{
    MJRefreshNormalHeader *refreshHeader = [MJRefreshNormalHeader headerWithRefreshingBlock:callback];
    [refreshHeader setTitle:@"下拉刷新" forState:MJRefreshStateIdle];
    [refreshHeader setTitle:@"松开刷新" forState:MJRefreshStatePulling];
    [refreshHeader setTitle:@"正在加载" forState:MJRefreshStateRefreshing];
    refreshHeader.stateLabel.font = [UIFont systemFontOfSize:12];
    refreshHeader.stateLabel.textColor = [UIColor grayColor];
    refreshHeader.lastUpdatedTimeLabel.hidden = YES;
    self.mj_header = refreshHeader;
}

- (void)addFooterRefreshWithCallback:(void (^)(void))callback
{
    MJRefreshAutoNormalFooter *refreshFooter = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:callback];
    [refreshFooter setTitle:@"" forState:MJRefreshStateIdle];
    [refreshFooter setTitle:@"加载更多..." forState:MJRefreshStateRefreshing];
    [refreshFooter setTitle:@"加载更多..." forState:MJRefreshStateNoMoreData];
    refreshFooter.triggerAutomaticallyRefreshPercent = 0.2;
    self.mj_footer = refreshFooter;
}


- (void)headerBeginRefreshing
{
    [self.mj_header beginRefreshing];
}

- (void)footerBeginRefreshing
{
    [self.mj_footer beginRefreshing];
}

- (void)headerEndRefreshing
{
    [self.mj_header endRefreshing];
}

- (void)footerEndRefreshing
{
    [self.mj_footer endRefreshing];
}



- (void)endRefreshingWithNoMoreData
{
    [self.mj_footer endRefreshingWithNoMoreData];
}
@end
