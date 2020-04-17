//
//  XLNetworkManager.m
//  Tools
//
//  Created by 路 on 2020/4/15.
//  Copyright © 2020 路. All rights reserved.
//

#import "XLNetworkManager.h"

@implementation XLNetworkManager
+ (AFHTTPSessionManager *)shareInstance
{
    static AFHTTPSessionManager *_sessionManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sessionManager = [[AFHTTPSessionManager alloc]init];
    });
    return _sessionManager;
}


+ (NSURLSessionDataTask *)POST:(NSString *)url parameters:(id)parameters success:(XLRequestBlock)success fail:(XLRequestBlock)fail
{
    return [[self shareInstance]
            POST:[self baseUrlWithUrl:url]
            parameters:parameters
            progress:NULL
            success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject)
    {
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error)
    {
        
    }];;
}


+ (NSURLSessionDataTask *)GET:(NSString *)url parameters:(id)parameters success:(XLRequestBlock)success fail:(XLRequestBlock)fail
{
    return [[self shareInstance]
            POST:[self baseUrlWithUrl:url]
            parameters:parameters
            progress:NULL
            success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject)
    {
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error)
    {
        
    }];
}

//+ (NSURLSessionDataTask *)POST:(NSString *)url parameters:(NSDictionary *)parameters classModel:(Class)model success:(XLRequestBlock)success fail:(XLRequestBlock)fail
//{
//    XLResponse *response1 = [[XLResponse alloc]init];
//    return [self POST:url
//           parameters:parameters
//              success:^(XLResponse * _Nonnull response)
//    {
//        id data = nil;
//        //判断是字典类型
//        if ([response.responseObject isKindOfClass:[NSDictionary class]])
//        {
//            data = [model mj_objectWithKeyValues:response.responseObject];
//        }
//        //判断是数组类型
//        if ([response.responseObject isKindOfClass:[NSArray class]])
//        {
//            data = [model mj_objectArrayWithKeyValuesArray:response.responseObject];
//        }
//        response1.msg = response.msg;
//        response1.responseData = data;
//        success(response1);
//
//    }fail:^(XLResponse * _Nonnull response)
//    {
//        response1.msg = response.msg;
//        fail(response1);
//    }];;
//}
//
//
//+ (NSURLSessionDataTask *)GET:(NSString *)url parameters:(NSDictionary *)parameters classModel:(Class)model success:(XLRequestBlock)success fail:(XLRequestBlock)fail
//{
//    XLResponse *response1 = [[XLResponse alloc]init];
//    return [self GET:url
//          parameters:parameters
//             success:^(XLResponse * _Nonnull response)
//    {
//        id data = nil;
//        //判断是字典类型
//        if ([response.responseObject isKindOfClass:[NSDictionary class]])
//        {
//            data = [model mj_objectWithKeyValues:response.responseObject];
//        }
//        //判断是数组类型
//        if ([response.responseObject isKindOfClass:[NSArray class]])
//        {
//            data = [model mj_objectArrayWithKeyValuesArray:response.responseObject];
//        }
//        response1.msg = response.msg;
//        response1.responseData = data;
//        success(response1);
//    } fail:^(XLResponse * _Nonnull response) {
//        response1.msg = response.msg;
//        fail(response1);
//    }];;
//}


+ (NSString *)baseUrlWithUrl:(NSString *)url
{
    //特殊的baseUrl不一样
    if ([url isEqualToString:@"www.baidu.com"])
    {
        return [url stringByAppendingString:@"http://www.baidu.com"];
    }else
    {
        return [url stringByAppendingString:@"https://www.baidu.com"];
    }
}


+ (NSString *)baseUrl
{
    return @"";
}
@end
