//
//  UIButton+Category.m
//  Tools
//
//  Created by 路 on 2018/6/14.
//  Copyright © 2018年 路. All rights reserved.
//

#import "UIButton+Category.h"

@implementation UIButton (Category)

- (void)addShadow
{
    self.layer.shadowOpacity = 0.8;//设置阴影的透明度
    self.layer.shadowOffset = CGSizeMake(1, 1);//设置阴影的偏移量
    self.layer.shadowRadius = 6;//设置阴影的圆角
    self.layer.shadowColor = [UIColor grayColor].CGColor;
}


#pragma mark 启动定时器方法
-(void)startWithTime:(NSInteger)time title:(NSString *)title endTitle:(NSString *)endTitle{
    
    //倒计时
    __block NSInteger timeOut = time;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    
    
    // 每秒执行一次
    dispatch_source_set_timer(_timer, dispatch_walltime(NULL, 0), 1.0 * NSEC_PER_SEC, 0);
    dispatch_source_set_event_handler(_timer, ^{
        if (timeOut <= 0) {
            
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                //这里设置自己需要的背景颜色
                NSString *titleString = @"重新获取";
                [self setAttributedTitle:[titleString changeColor:[UIColor hexString:@"eea204"] andRange:NSMakeRange(0, titleString.length)] forState:UIControlStateNormal];
                [self setTitle:endTitle forState:UIControlStateNormal];
                self.userInteractionEnabled = YES;
            });
            
        }else{
            NSString *timeStr = [NSString stringWithFormat:@"%.2ld",(long)timeOut];
            dispatch_async(dispatch_get_main_queue(), ^{
                NSString *titleString = [NSString stringWithFormat:@"%@s后%@",timeStr,title];
                [self setAttributedTitle:[titleString changeColor:[UIColor hexString:@"999999"] andRange:NSMakeRange(titleString.length - title.length, title.length)] forState:UIControlStateNormal];
                self.userInteractionEnabled = NO;
            });
            timeOut -- ;
        }
        
    });
    dispatch_resume(_timer);
}



#pragma mark 启动定时器方法
-(void)startWithComplete:(Block)complete{
    NSString *title = @"重新获取";
    //倒计时
    __block NSInteger timeOut = 60;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    
    
    // 每秒执行一次
    dispatch_source_set_timer(_timer, dispatch_walltime(NULL, 0), 1.0 * NSEC_PER_SEC, 0);
    dispatch_source_set_event_handler(_timer, ^{
        if (timeOut <= 0) {
            
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                //这里设置自己需要的背景颜色
                NSString *titleString = title;
                [self setAttributedTitle:[titleString changeColor:[UIColor hexString:@"eea204"] andRange:NSMakeRange(0, titleString.length)] forState:UIControlStateNormal];
                [self setTitle:title forState:UIControlStateNormal];
                self.userInteractionEnabled = YES;
                complete();
            });
            
        }else{
            NSString *timeStr = [NSString stringWithFormat:@"%.2ld",(long)timeOut];
            dispatch_async(dispatch_get_main_queue(), ^{
                NSString *titleString = [NSString stringWithFormat:@"%@s后%@",timeStr,title];
                [self setAttributedTitle:[titleString changeColor:[UIColor hexString:@"999999"] andRange:NSMakeRange(titleString.length - title.length, title.length)] forState:UIControlStateNormal];
                self.userInteractionEnabled = NO;
            });
            timeOut -- ;
        }
    });
    dispatch_resume(_timer);
}
@end
