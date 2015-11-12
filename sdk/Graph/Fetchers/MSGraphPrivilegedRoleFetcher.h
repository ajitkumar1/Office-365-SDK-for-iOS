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



#ifndef MSGRAPHPRIVILEGEDROLEFETCHER_H
#define MSGRAPHPRIVILEGEDROLEFETCHER_H

#import "MSGraphModels.h"
#import "api/api.h"
#import "core/MSOrcEntityFetcher.h"

@class MSGraphPrivilegedRoleSummaryFetcher;
@class MSGraphPrivilegedRoleSettingsFetcher;
@class MSGraphPrivilegedRoleAssignmentCollectionFetcher;
@class MSGraphPrivilegedRoleSummaryFetcher;
@class MSGraphPrivilegedRoleSettingsFetcher;
@class MSGraphPrivilegedRoleAssignmentCollectionFetcher;
@class MSGraphPrivilegedRoleAssignmentFetcher;
@class MSGraphPrivilegedRoleOperations;


/** MSGraphPrivilegedRoleFetcher
 *
 */
@interface MSGraphPrivilegedRoleFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphPrivilegedRoleOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSGraphPrivilegedRole *, MSOrcError *))callback;
- (void)update:(MSGraphPrivilegedRole *)PrivilegedRole callback:(void (^)(MSGraphPrivilegedRole *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSGraphPrivilegedRoleFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphPrivilegedRoleFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphPrivilegedRoleFetcher *)select:(NSString *)params;
- (MSGraphPrivilegedRoleFetcher *)expand:(NSString *)value;

@property (strong, nonatomic, readonly, getter=summary) MSGraphPrivilegedRoleSummaryFetcher *summary;

@property (strong, nonatomic, readonly, getter=settings) MSGraphPrivilegedRoleSettingsFetcher *settings;
@property (strong, nonatomic, readonly, getter=assignments) MSGraphPrivilegedRoleAssignmentCollectionFetcher *assignments;

- (MSGraphPrivilegedRoleAssignmentFetcher *)assignmentsById:(id)identifier;


@end

#endif