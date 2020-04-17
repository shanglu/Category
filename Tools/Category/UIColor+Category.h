//
//  UIColor+Category.h
//  Tools
//
//  Created by 路 on 2018/6/13.
//  Copyright © 2018年 路. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Category)
/**
 RGB数字转颜色 带alpha
 
 @param r   red
 @param g   green
 @param b   blue
 @param alp alpha
 
 @return UIColor
 */
+(instancetype)colorWithR:(CGFloat)r g:(CGFloat)g b:(CGFloat)b alp:(CGFloat)alp;


/**
 RGB数字转颜色 不带alpha
 
 @param r   red
 @param g   green
 @param b   blue
 
 @return UIColor
 */
+ (instancetype)colorWithR:(CGFloat)r g:(CGFloat)g b:(CGFloat)b ;


/**
 16进制转颜色 带alpha
 
 @param color 16进制数字
 @param alp alpha
 
 @return UIColor
 */
+ (instancetype)hexString:(NSString *)color alp:(CGFloat)alp ;

/**
 16进制转颜色 不带alpha
 
 @param color 16进制数字
 
 @return UIColor
 */
+ (instancetype)hexString:(NSString *)color ;


/**
 16进制长整型转颜色 带alpha
 
 @param hexColor alpha
 
 @param alp alpha
 
 @return UIColor
 */
+ (instancetype)hexColor:(long)hexColor alp:(float)alp;


/**
 16进制长整型转颜色 不带alpha
 
 @param hexColor alpha
 
 @return UIColor
 */
+ (instancetype)hexColor:(long)hexColor;
@end
