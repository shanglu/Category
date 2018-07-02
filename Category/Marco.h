//
//  Marco.h
//  RentingPhone
//
//  Created by Mac on 2018/5/15.
//  Copyright © 2018年 搜影科技. All rights reserved.
//

#ifndef Marco_h
#define Marco_h

#import <Foundation/Foundation.h>


// 屏幕高度
#define kScreen_H [UIScreen mainScreen].bounds.size.height
// 屏幕宽度
#define kScreen_W [UIScreen mainScreen].bounds.size.width


// 设备相关
#define iPhone4 ([UIScreen mainScreen].bounds.size.width==320&&[UIScreen mainScreen].bounds.size.height==480)
#define iPhone5 ([UIScreen mainScreen].bounds.size.width==320&&[UIScreen mainScreen].bounds.size.height==568)
#define iPhone6 ([UIScreen mainScreen].bounds.size.width==375&&[UIScreen mainScreen].bounds.size.height==667)
#define iPhone6P ([UIScreen mainScreen].bounds.size.width==414&&[UIScreen mainScreen].bounds.size.height==736)
#define iPhoneX ([UIScreen mainScreen].bounds.size.width==375&&[UIScreen mainScreen].bounds.size.height==812)

//状态栏的高度

#define kStatusBarHeight [[UIApplication sharedApplication] statusBarFrame].size.height

//导航栏的高度

#define kNavBarHeight 44.0

//iphoneX-SafeArea的高度

#define kSafeAreaHeight ([[UIApplication sharedApplication] statusBarFrame].size.height>20? 40:0)

//分栏+iphoneX-SafeArea的高度

#define kTabBarHeight (49+kSafeAreaHeight)

//导航栏+状态栏的高度

#define kTopHeight (kStatusBarHeight + kNavBarHeight)



//弱引用 
#define kWeakSelf __weak typeof(self) weakSelf = self;


#ifndef weakify
#if DEBUG
#if __has_feature(objc_arc)
#define weakify(object) autoreleasepool{} __weak __typeof__(object) weak##_##object = object;
#else
#define weakify(object) autoreleasepool{} __block __typeof__(object) block##_##object = object;
#endif
#else
#if __has_feature(objc_arc)
#define weakify(object) try{} @finally{} {} __weak __typeof__(object) weak##_##object = object;
#else
#define weakify(object) try{} @finally{} {} __block __typeof__(object) block##_##object = object;
#endif
#endif
#endif

#ifndef strongify
#if DEBUG
#if __has_feature(objc_arc)
#define strongify(object) autoreleasepool{} __typeof__(object) object = weak##_##object;
#else
#define strongify(object) autoreleasepool{} __typeof__(object) object = block##_##object;
#endif
#else
#if __has_feature(objc_arc)
#define strongify(object) try{} @finally{} __typeof__(object) object = weak##_##object;
#else
#define strongify(object) try{} @finally{} __typeof__(object) object = block##_##object;
#endif
#endif
#endif


// DEBUG模式下打印 切换至release模式下不打印
#ifndef __OPTIMIZE__
#define NSLog(...) NSLog(__VA_ARGS__)
#else
#define NSLog(...) {}
#endif




//Block
typedef void (^Block) ();



#endif /* Marco_h */
