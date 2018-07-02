//
//  UIScrollView+Category.m
//  MoneyLove
//
//  Created by 路 on 2018/6/13.
//  Copyright © 2018年 路. All rights reserved.
//

#import "UIScrollView+Category.h"
#import "DIYFooter.h"

@implementation UIScrollView (Category)
- (void)addHeaderRefreshWithCallback:(nullable void(^)(void))callback {
    
    NSMutableArray *idleImages = [NSMutableArray array];
    for (int i = 0; i < 4; i ++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"fresh_%d",i]];
        [idleImages addObject:image];
    }
    MJRefreshGifHeader *refreshHeader = [MJRefreshGifHeader headerWithRefreshingBlock:callback];
    [refreshHeader setImages:idleImages duration:1.0 forState:MJRefreshStateIdle] ;
    [refreshHeader setImages:idleImages duration:1.0 forState:MJRefreshStatePulling];
    [refreshHeader setImages:idleImages duration:1.0 forState:MJRefreshStateRefreshing];
    refreshHeader.lastUpdatedTimeLabel.hidden = YES;
    refreshHeader.stateLabel.hidden = YES;
    self.mj_header = refreshHeader;
}

- (void)addFooterRefreshWithCallback:(nullable void(^)(void))callback {
    DIYFooter *refreshFooter = [DIYFooter footerWithRefreshingBlock:callback];
    refreshFooter.triggerAutomaticallyRefreshPercent = .8;
    self.mj_footer = refreshFooter;
}


- (void)headerBeginRefreshing {
    [self.mj_header beginRefreshing];
}

- (void)footerBeginRefreshing {
    [self.mj_footer beginRefreshing];
}

- (void)headerEndRefreshing {
    [self.mj_header endRefreshing];
}

- (void)footerEndRefreshing {
    [self.mj_footer endRefreshing];
}



- (void)endRefreshingWithNoMoreData{
    [self.mj_footer endRefreshingWithNoMoreData];
}
@end
