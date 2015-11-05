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



#ifndef MSDIRECTORYSERVICESSERVICEPRINCIPALFETCHER_H
#define MSDIRECTORYSERVICESSERVICEPRINCIPALFETCHER_H

#import <orc.h>
#import "MSDirectoryServicesModels.h"
#import "MSOrcEntityFetcher.h"

@class MSDirectoryServicesAppRoleCollectionFetcher;
@class MSDirectoryServicesKeyCredentialCollectionFetcher;
@class MSDirectoryServicesOAuth2PermissionCollectionFetcher;
@class MSDirectoryServicesPasswordCredentialCollectionFetcher;
@class MSDirectoryServicesAppRoleAssignmentCollectionFetcher;
@class MSDirectoryServicesOAuth2PermissionGrantCollectionFetcher;
@class MSDirectoryServicesAppRoleAssignmentCollectionFetcher;
@class MSDirectoryServicesOAuth2PermissionGrantCollectionFetcher;
@class MSDirectoryServicesAppRoleAssignmentFetcher;
@class MSDirectoryServicesOAuth2PermissionGrantFetcher;
@class MSDirectoryServicesServicePrincipalOperations;


/** MSDirectoryServicesServicePrincipalFetcher
 *
 */
@interface MSDirectoryServicesServicePrincipalFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSDirectoryServicesServicePrincipalOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSDirectoryServicesServicePrincipal *, MSOrcError *))callback;
- (void)update:(MSDirectoryServicesServicePrincipal *)ServicePrincipal callback:(void (^)(MSDirectoryServicesServicePrincipal *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSDirectoryServicesServicePrincipalFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSDirectoryServicesServicePrincipalFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSDirectoryServicesServicePrincipalFetcher *)select:(NSString *)params;
- (MSDirectoryServicesServicePrincipalFetcher *)expand:(NSString *)value;
@property (strong, nonatomic, readonly, getter=appRoleAssignedTo) MSDirectoryServicesAppRoleAssignmentCollectionFetcher *appRoleAssignedTo;

- (MSDirectoryServicesAppRoleAssignmentFetcher *)appRoleAssignedToById:(id)identifier;

@property (strong, nonatomic, readonly, getter=appRoleAssignments) MSDirectoryServicesAppRoleAssignmentCollectionFetcher *appRoleAssignments;

- (MSDirectoryServicesAppRoleAssignmentFetcher *)appRoleAssignmentsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=oauth2PermissionGrants) MSDirectoryServicesOAuth2PermissionGrantCollectionFetcher *oauth2PermissionGrants;

- (MSDirectoryServicesOAuth2PermissionGrantFetcher *)oauth2PermissionGrantsById:(id)identifier;


@end

#endif
