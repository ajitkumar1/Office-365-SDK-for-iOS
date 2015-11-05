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


#ifndef MSDIRECTORYSERVICESDEVICECONFIGURATIONCOLLECTIONFETCHER_H
#define MSDIRECTORYSERVICESDEVICECONFIGURATIONCOLLECTIONFETCHER_H

@class MSDirectoryServicesDeviceConfigurationFetcher;



#import <orc.h>
#import "MSDirectoryServicesModels.h"

/** MSDirectoryServicesDeviceConfigurationCollectionFetcher
 *
 */
@interface MSDirectoryServicesDeviceConfigurationCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSDirectoryServicesDeviceConfigurationFetcher *)getById: (id) identifier;
- (void)add:(MSDirectoryServicesDeviceConfiguration *)entity callback:(void (^)(MSDirectoryServicesDeviceConfiguration *, MSOrcError *))callback;

- (MSDirectoryServicesDeviceConfigurationCollectionFetcher *)select:(NSString *)params;
- (MSDirectoryServicesDeviceConfigurationCollectionFetcher *)filter:(NSString *)params;
- (MSDirectoryServicesDeviceConfigurationCollectionFetcher *)search:(NSString *)params;
- (MSDirectoryServicesDeviceConfigurationCollectionFetcher *)top:(int)value;
- (MSDirectoryServicesDeviceConfigurationCollectionFetcher *)skip:(int)value;
- (MSDirectoryServicesDeviceConfigurationCollectionFetcher *)expand:(NSString *)value;
- (MSDirectoryServicesDeviceConfigurationCollectionFetcher *)orderBy:(NSString *)params;
- (MSDirectoryServicesDeviceConfigurationCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSDirectoryServicesDeviceConfigurationCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
