//
//  UIViewController+Category.h
//  Tools
//
//  Created by 路 on 2018/6/13.
//  Copyright © 2018年 路. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Category)

/**
 加载ViewController

 @return xib加载
 */
+ (instancetype)loadFromNib;

/**
 加载ViewController

 @return storyboard加载
 */
+ (instancetype)loadFromSB;

/**
 加载ViewController

 @param storyBoard storyBoard的名字
 @return storyboard加载
 */
+ (instancetype)loadFromStoryBoard:(NSString *)storyBoard;

@end
