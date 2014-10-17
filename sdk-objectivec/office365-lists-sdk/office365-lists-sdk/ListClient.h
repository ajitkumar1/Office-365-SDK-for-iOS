//
//  ListClient.h
//  office365-lists-sdk
//
//  Created by Gustavo on 7/22/14.
//  Copyright (c) 2014 Lagash. All rights reserved.
//

#import <office365-base-sdk/BaseClient.h>

@interface ListClient : BaseClient

- (NSURLSessionDataTask *)getLists:(void (^)(NSMutableArray *lists, NSError *error))callback;
- (NSURLSessionDataTask *)getList:(NSString *)name callback:(void (^)(NSData *data, NSURLResponse *response, NSError *error))callback;

@end