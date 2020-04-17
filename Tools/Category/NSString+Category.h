//
//  NSString+Category.h
//  Tools
//
//  Created by 路 on 2018/6/15.
//  Copyright © 2018年 路. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 range的校验结果
 */
typedef enum
{
    RangeCorrect = 0,
    RangeError = 1,
    RangeOut = 2,
    
}RangeFormatType;



@interface NSString (Category)
- (BOOL)isValid;
/**
 *  改变字体的颜色
 *
 *  @param color 颜色（UIColor）
 *  @param range 范围（NSRange）
 *
 *  @return 转换后的富文本（NSMutableAttributedString）
 */
- (NSMutableAttributedString *)changeColor:(UIColor *)color
                                  andRange:(NSRange)range;

/**
 *  对相应的字符串进行改变
 *
 *  @param str   需要改变的字符串
 *  @param color 字体颜色
 *  @param font  字体大小
 *
 *  @return 转换后的富文本（NSMutableAttributedString）
 */
- (NSMutableAttributedString *)changeWithStr:(NSString *)str andColor:(UIColor *)color andFont:(UIFont *)font;
/**
 *  对相应的字符串进行改变
 *
 *  @param str   需要改变的字符串
 *  @param color 字体颜色
 *
 *  @return 转换后的富文本（NSMutableAttributedString）
 */
- (NSMutableAttributedString *)changeWithStr:(NSString *)str andColor:(UIColor *)color;
#pragma mark - 32位 小写

/**
 MD5小写加密
 
 @return 返回加密后的字符串
 */
- (NSString *)MD5ForLower32Bate;
@end
