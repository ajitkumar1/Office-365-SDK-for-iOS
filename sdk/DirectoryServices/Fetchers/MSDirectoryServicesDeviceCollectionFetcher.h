/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Open Technologies, Inc. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/


#ifndef MSDIRECTORYSERVICESDEVICECOLLECTIONFETCHER_H
#define MSDIRECTORYSERVICESDEVICECOLLECTIONFETCHER_H

@class MSDirectoryServicesDeviceFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "MSDirectoryServicesModels.h"

/** MSDirectoryServicesDeviceCollectionFetcher
 *
 */
@interface MSDirectoryServicesDeviceCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSDirectoryServicesDeviceFetcher *)getById: (id) identifier;
- (void)add:(MSDirectoryServicesDevice *)entity callback:(void (^)(MSDirectoryServicesDevice *, MSOrcError *))callback;

- (MSDirectoryServicesDeviceCollectionFetcher *)select:(NSString *)params;
- (MSDirectoryServicesDeviceCollectionFetcher *)filter:(NSString *)params;
- (MSDirectoryServicesDeviceCollectionFetcher *)search:(NSString *)params;
- (MSDirectoryServicesDeviceCollectionFetcher *)top:(int)value;
- (MSDirectoryServicesDeviceCollectionFetcher *)skip:(int)value;
- (MSDirectoryServicesDeviceCollectionFetcher *)expand:(NSString *)value;
- (MSDirectoryServicesDeviceCollectionFetcher *)orderBy:(NSString *)params;
- (MSDirectoryServicesDeviceCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSDirectoryServicesDeviceCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
