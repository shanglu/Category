//
//  BaseViewController.m
//  Tools
//
//  Created by 路 on 2020/4/17.
//  Copyright © 2020 路. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (@available(iOS 11.0, *))
    {
         UIScrollView.appearance.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
     }
}
@end
