//
//  UIScrollView+XLRefresh.h
//  Tools
//
//  Created by 路 on 2018/6/13.
//  Copyright © 2018年 路. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (XLRefresh)
- (void)addHeaderRefreshWithCallback:(nullable void(^)(void))callback;

- (void)addFooterRefreshWithCallback:(nullable void(^)(void))callback;

- (void)headerBeginRefreshing;

- (void)footerBeginRefreshing;

- (void)headerEndRefreshing;

- (void)footerEndRefreshing;

- (void)endRefreshingWithNoMoreData;
@end
