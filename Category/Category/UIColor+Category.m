//
//  UIColor+Category.m
//  MoneyLove
//
//  Created by 路 on 2018/6/13.
//  Copyright © 2018年 路. All rights reserved.
//

#import "UIColor+Category.h"

@implementation UIColor (Category)
#pragma mark RGB数字转颜色初始化
+(instancetype)colorWithR:(CGFloat)r g:(CGFloat)g b:(CGFloat)b alp:(CGFloat)alp{
    return [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:alp];
    
}
#pragma mark RGB数字转颜色 不带alpha 初始化
+(instancetype)colorWithR:(CGFloat)r g:(CGFloat)g b:(CGFloat)b{
    return [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1];
}


#pragma mark 16进制转颜色初始化
+(instancetype)colorWithHexString:(NSString *)color alp:(CGFloat)alp{
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    // String should be 6 or 8 characters
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    
    //判断前缀
    if ([cString hasPrefix:@"0X"]) {
        cString = [cString substringFromIndex:2];
    }
    if ([cString hasPrefix:@"#"]) {
        cString = [cString substringFromIndex:1];
    }
    if ([cString length] != 6) {
        return [UIColor clearColor];
    }
    
    
    //从6位数值中找到RGB对应的位数并转换
    NSRange range;
    range.location = 0;
    range.length = 2;
    
    //R、G、B
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:alp];
}


#pragma mark 16进制转颜色不带alpha 初始化
+(instancetype)colorWithHexString:(NSString *)color{
    return [self colorWithHexString:color alp:1];
}

#pragma mark 16进制长整型转颜色 带alpha
+(instancetype)colorWithHexColor:(long)hexColor alp:(float)alp{
    float red = ((float)((hexColor & 0xFF0000) >> 16))/255.0;
    float green = ((float)((hexColor & 0xFF00) >> 8))/255.0;
    float blue = ((float)(hexColor & 0xFF))/255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:alp];
}

#pragma mark 16进制长整型转颜色 不带alpha
+(instancetype)colorWithHexColor:(long)hexColor{
    return [UIColor colorWithHexColor:hexColor];
}

@end
