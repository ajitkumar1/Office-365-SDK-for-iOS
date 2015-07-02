/*******************************************************************************
Copyright (c) Microsoft Open Technologies, Inc. All Rights Reserved.
Licensed under the MIT or Apache License; see LICENSE in the source repository
root for authoritative license information.﻿

**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).
******************************************************************************/

@class MSDirectoryDeviceFetcher;
@class MSDirectoryDeviceCollectionFetcher;

#import <core/core.h>
#import "MSDirectoryModels.h"

/**
* The header for type MSDirectoryDeviceCollectionFetcher.
*/

@protocol MSDirectoryDeviceCollectionFetcherProtocol<MSOrcCollectionFetcher>

@optional

- (void)readWithCallback:(void (^)(NSArray<MSDirectoryDevice> *devices, MSOrcError *error))callback;

- (MSDirectoryDeviceCollectionFetcher *)select:(NSString *)params;
- (MSDirectoryDeviceCollectionFetcher *)filter:(NSString *)params;
- (MSDirectoryDeviceCollectionFetcher *)search:(NSString *)params;
- (MSDirectoryDeviceCollectionFetcher *)top:(int)value;
- (MSDirectoryDeviceCollectionFetcher *)skip:(int)value;
- (MSDirectoryDeviceCollectionFetcher *)expand:(NSString *)value;
- (MSDirectoryDeviceCollectionFetcher *)orderBy:(NSString *)params;
- (MSDirectoryDeviceCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSDirectoryDeviceCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@required

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;
- (MSDirectoryDeviceFetcher *)getById:(NSString *)Id;
- (void)add:(MSDirectoryDevice *)entity callback:(void (^)(MSDirectoryDevice *device, MSOrcError *error))callback;

@end

@interface MSDirectoryDeviceCollectionFetcher : MSOrcCollectionFetcher<MSDirectoryDeviceCollectionFetcherProtocol>

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

@end