//
//  UIApplicationDemoViewController.m
//  Tools
//
//  Created by 路 on 2020/4/17.
//  Copyright © 2020 路. All rights reserved.
//

#import "UIApplicationDemoViewController.h"

@interface UIApplicationDemoViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, copy) NSArray *list;
@end

@implementation UIApplicationDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.list = @[
        [NSString stringWithFormat:@"App bundleId：%@",[UIApplication xl_bundleId]],
        [NSString stringWithFormat:@"App 名称：%@",[UIApplication xl_appName]],
        [NSString stringWithFormat:@"App 版本号：%@",[UIApplication xl_version]],
        [NSString stringWithFormat:@"App Build版本：%@",[UIApplication xl_build]]];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.list.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text =  self.list[indexPath.row];
    return cell;
}

@end
