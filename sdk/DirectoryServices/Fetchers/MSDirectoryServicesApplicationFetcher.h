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



#ifndef MSDIRECTORYSERVICESAPPLICATIONFETCHER_H
#define MSDIRECTORYSERVICESAPPLICATIONFETCHER_H

#import <orc.h>
#import "MSDirectoryServicesModels.h"
#import "MSOrcEntityFetcher.h"

@class MSDirectoryServicesAppRoleCollectionFetcher;
@class MSDirectoryServicesKeyCredentialCollectionFetcher;
@class MSDirectoryServicesOAuth2PermissionCollectionFetcher;
@class MSDirectoryServicesPasswordCredentialCollectionFetcher;
@class MSDirectoryServicesRequiredResourceAccessCollectionFetcher;
@class MSDirectoryServicesExtensionPropertyCollectionFetcher;
@class MSDirectoryServicesExtensionPropertyCollectionFetcher;
@class MSDirectoryServicesExtensionPropertyFetcher;
@class MSDirectoryServicesApplicationOperations;


/** MSDirectoryServicesApplicationFetcher
 *
 */
@interface MSDirectoryServicesApplicationFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSDirectoryServicesApplicationOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSDirectoryServicesApplication *, MSOrcError *))callback;
- (void)update:(MSDirectoryServicesApplication *)Application callback:(void (^)(MSDirectoryServicesApplication *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSDirectoryServicesApplicationFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSDirectoryServicesApplicationFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSDirectoryServicesApplicationFetcher *)select:(NSString *)params;
- (MSDirectoryServicesApplicationFetcher *)expand:(NSString *)value;
@property (strong, nonatomic, readonly, getter=extensionProperties) MSDirectoryServicesExtensionPropertyCollectionFetcher *extensionProperties;

- (MSDirectoryServicesExtensionPropertyFetcher *)extensionPropertiesById:(id)identifier;


@end

#endif
