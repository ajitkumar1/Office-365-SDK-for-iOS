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


#ifndef MSGRAPHPRIVILEGEDROLESETTINGSCOLLECTIONFETCHER_H
#define MSGRAPHPRIVILEGEDROLESETTINGSCOLLECTIONFETCHER_H

@class MSGraphPrivilegedRoleSettingsFetcher;



#import <orc.h>
#import "MSGraphModels.h"

/** MSGraphPrivilegedRoleSettingsCollectionFetcher
 *
 */
@interface MSGraphPrivilegedRoleSettingsCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSGraphPrivilegedRoleSettingsFetcher *)getById: (id) identifier;
- (void)add:(MSGraphPrivilegedRoleSettings *)entity callback:(void (^)(MSGraphPrivilegedRoleSettings *, MSOrcError *))callback;

- (MSGraphPrivilegedRoleSettingsCollectionFetcher *)select:(NSString *)params;
- (MSGraphPrivilegedRoleSettingsCollectionFetcher *)filter:(NSString *)params;
- (MSGraphPrivilegedRoleSettingsCollectionFetcher *)search:(NSString *)params;
- (MSGraphPrivilegedRoleSettingsCollectionFetcher *)top:(int)value;
- (MSGraphPrivilegedRoleSettingsCollectionFetcher *)skip:(int)value;
- (MSGraphPrivilegedRoleSettingsCollectionFetcher *)expand:(NSString *)value;
- (MSGraphPrivilegedRoleSettingsCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphPrivilegedRoleSettingsCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphPrivilegedRoleSettingsCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
