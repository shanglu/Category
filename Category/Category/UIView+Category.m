//
//  UIView+Category.m
//  MoneyLove
//
//  Created by 路 on 2018/6/13.
//  Copyright © 2018年 路. All rights reserved.
//

#import "UIView+Category.h"

@implementation UIView (Category)

+ (instancetype)loadFromNib
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:self options:nil] lastObject];
}

+(instancetype)chageControlCircularWith:(id)anyControl cornerRadius:(NSInteger)radius borderWidth:(NSInteger)width borderColor:(UIColor *)borderColor canMasksToBounds:(BOOL)can{
    CALayer *layer=[anyControl layer];
    [layer setCornerRadius:radius];
    [layer setBorderWidth:width];
    [layer setBorderColor:[borderColor CGColor]];
    [layer setMasksToBounds:can];
    
    return anyControl;
}
@end
