//
//  XLNetworkManager.h
//  Tools
//
//  Created by 路 on 2020/4/15.
//  Copyright © 2020 路. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>
#import <MJExtension.h>
#import "XLResponse.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^XLRequestBlock)(XLResponse * response);

@interface XLNetworkManager : NSObject

+ (AFHTTPSessionManager *)shareInstance;

+ (NSURLSessionDataTask *)POST:(nonnull NSString *)url
                    parameters:(nullable id)parameters
                       success:(XLRequestBlock)success
                          fail:(XLRequestBlock)fail;

+ (NSURLSessionDataTask *)GET:(nonnull NSString *)url
                   parameters:(nullable id)parameters
                      success:(XLRequestBlock)success
                         fail:(XLRequestBlock)fail;
//
//+ (NSURLSessionDataTask *)POST:(NSString *)url
//                    parameters:(NSDictionary *)parameters
//                    classModel:(Class)model
//                       success:(XLRequestBlock)success
//                          fail:(XLRequestBlock)fail;
//
//+ (NSURLSessionDataTask *)GET:(NSString *)url
//                   parameters:(NSDictionary *)parameters
//                   classModel:(Class)model
//                      success:(XLRequestBlock)success
//                         fail:(XLRequestBlock)fail;



@end

NS_ASSUME_NONNULL_END
