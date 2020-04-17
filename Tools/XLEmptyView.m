//
//  XLEmptyView.m
//  Tools
//
//  Created by 路 on 2020/4/17.
//  Copyright © 2020 路. All rights reserved.
//

#import "XLEmptyView.h"

@implementation XLEmptyView
- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)showIcon:(NSString *)icon text:(NSString *)text buttonTitle:(NSString *)title
{
    self.imageView.image        = [UIImage imageNamed:icon];
    self.label.text             = text;
    [self.button setTitle:title forState:UIControlStateNormal];
}

- (IBAction)buttonClick
{
    if (self.block)
    {
        self.block();
    }
}

- (void)dealloc
{
    NSLog(@"%s", __func__);
}
@end
