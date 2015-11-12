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



#ifndef MSDIRECTORYSERVICESDEVICEFETCHER_H
#define MSDIRECTORYSERVICESDEVICEFETCHER_H

#import "MSDirectoryServicesModels.h"
#import "api/api.h"
#import "core/MSOrcEntityFetcher.h"

@class MSDirectoryServicesAlternativeSecurityIdCollectionFetcher;
@class MSDirectoryServicesDirectoryObjectCollectionFetcher;
@class MSDirectoryServicesDirectoryObjectCollectionFetcher;
@class MSDirectoryServicesDirectoryObjectFetcher;
@class MSDirectoryServicesDeviceOperations;


/** MSDirectoryServicesDeviceFetcher
 *
 */
@interface MSDirectoryServicesDeviceFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSDirectoryServicesDeviceOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSDirectoryServicesDevice *, MSOrcError *))callback;
- (void)update:(MSDirectoryServicesDevice *)Device callback:(void (^)(MSDirectoryServicesDevice *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSDirectoryServicesDeviceFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSDirectoryServicesDeviceFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSDirectoryServicesDeviceFetcher *)select:(NSString *)params;
- (MSDirectoryServicesDeviceFetcher *)expand:(NSString *)value;
@property (strong, nonatomic, readonly, getter=registeredOwners) MSDirectoryServicesDirectoryObjectCollectionFetcher *registeredOwners;

- (MSDirectoryServicesDirectoryObjectFetcher *)registeredOwnersById:(id)identifier;

@property (strong, nonatomic, readonly, getter=registeredUsers) MSDirectoryServicesDirectoryObjectCollectionFetcher *registeredUsers;

- (MSDirectoryServicesDirectoryObjectFetcher *)registeredUsersById:(id)identifier;


@end

#endif