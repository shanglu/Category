//
//  UIButton+Category.h
//  MoneyLove
//
//  Created by 路 on 2018/6/14.
//  Copyright © 2018年 路. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Category)
- (void)addShadow;

/**
 定时器启动调用
 
 @param time       总倒计时时间
 @param title      倒计时描述文字
 @param endTitle   结束时描述文字
 */
-(void)startWithTime:(NSInteger)time title:(NSString *)title endTitle:(NSString *)endTitle;

/**
 定时器启动

 @param complete 完成Block
 */
-(void)startWithComplete:(Block)complete;
@end
