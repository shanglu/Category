//
//  UIView+XLNib.m
//  Tools
//
//  Created by 路 on 2020/4/17.
//  Copyright © 2020 路. All rights reserved.
//

#import "UIView+XLNib.h"

@implementation UIView (XLNib)
+ (UINib *)xl_loadNib
{
    return [self xl_loadNibNamed:NSStringFromClass([self class])];
}
+ (UINib *)xl_loadNibNamed:(NSString*)nibName
{
    return [self xl_loadNibNamed:nibName bundle:[NSBundle mainBundle]];
}
+ (UINib *)xl_loadNibNamed:(NSString*)nibName bundle:(NSBundle *)bundle
{
    return [UINib nibWithNibName:nibName bundle:bundle];
}
+ (instancetype)xl_loadInstanceFromNib
{
    return [self xl_loadInstanceFromNibWithName:NSStringFromClass([self class])];
}
+ (instancetype)xl_loadInstanceFromNibWithName:(NSString *)nibName
{
    return [self xl_loadInstanceFromNibWithName:nibName owner:nil];
}
+ (instancetype)xl_loadInstanceFromNibWithName:(NSString *)nibName owner:(id)owner
{
    return [self xl_loadInstanceFromNibWithName:nibName owner:owner bundle:[NSBundle mainBundle]];
}
+ (instancetype)xl_loadInstanceFromNibWithName:(NSString *)nibName owner:(id)owner bundle:(NSBundle *)bundle
{
    UIView *v = nil;
    NSArray* nibs = [bundle loadNibNamed:nibName owner:owner options:nil];
    for (id object in nibs)
    {
        if ([object isKindOfClass:[self class]])
        {
            v = object;
            break;
        }
    }
    return v;
}
@end
