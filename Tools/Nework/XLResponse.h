//
//  XLResponse.h
//  Tools
//
//  Created by 路 on 2020/4/15.
//  Copyright © 2020 路. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XLResponse : NSObject
/// json基本数据格式
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *errorCode;
@property (nonatomic, copy) NSString *msg;
@property (nonatomic, strong) id responseData;
@end

NS_ASSUME_NONNULL_END
