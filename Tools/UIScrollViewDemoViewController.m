//
//  UIScrollViewDemoViewController.m
//  Tools
//
//  Created by 路 on 2020/4/17.
//  Copyright © 2020 路. All rights reserved.
//

#import "UIScrollViewDemoViewController.h"

@interface UIScrollViewDemoViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, assign) NSInteger count;
@end

@implementation UIScrollViewDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.count = 0;
    
    __weak typeof(self) weakSelf = self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    [self.tableView addHeaderRefreshWithCallback:^{
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [weakSelf.tableView headerEndRefreshing];
            weakSelf.count = 0;
            [weakSelf showEmptyView];
            [weakSelf.tableView reloadData];
        });
    }];
    
    
    [self.tableView addFooterRefreshWithCallback:^{
                
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [weakSelf.tableView footerEndRefreshing];
        });
    }];
    
    
    [self showEmptyView];
}

- (void)showEmptyView
{
    __weak typeof(self) weakSelf = self;
    [self.tableView showIcon:@"network_error_icon" text:@"抱歉网络出错啦" buttonTitle:@"点击一下" block:^{
        NSLog(@"我点击了重试按钮哦");
        [weakSelf.tableView hide];
        weakSelf.count = 10;
        [weakSelf.tableView reloadData];
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%zd----%zd", indexPath.item, indexPath.item];
    return cell;
}

- (void)dealloc
{
    NSLog(@"%s", __func__);
}

@end
