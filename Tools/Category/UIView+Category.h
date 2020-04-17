//
//  UIView+Category.h
//  Tools
//
//  Created by 路 on 2018/6/13.
//  Copyright © 2018年 路. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Category)

/**
 XIB加载View

 @return 返回View
 */
+ (instancetype)loadFromNib;
/**
 设置按钮的圆角
 
 @param anyControl 控件
 @param radius 圆角度
 @param width 边宽度
 @param borderColor 边线颜色
 @param can 是否裁剪
 @return 控件
 */
+(instancetype)chageControlCircularWith:(id)anyControl cornerRadius:(NSInteger)radius borderWidth:(NSInteger)width borderColor:(UIColor *)borderColor canMasksToBounds:(BOOL)can;
@end
