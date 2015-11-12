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


#ifndef MSGRAPHPRIVILEGEDOPERATIONNOTIFICATIONRULECOLLECTIONFETCHER_H
#define MSGRAPHPRIVILEGEDOPERATIONNOTIFICATIONRULECOLLECTIONFETCHER_H

@class MSGraphPrivilegedOperationNotificationRuleFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "MSGraphModels.h"

/** MSGraphPrivilegedOperationNotificationRuleCollectionFetcher
 *
 */
@interface MSGraphPrivilegedOperationNotificationRuleCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSGraphPrivilegedOperationNotificationRuleFetcher *)getById: (id) identifier;
- (void)add:(MSGraphPrivilegedOperationNotificationRule *)entity callback:(void (^)(MSGraphPrivilegedOperationNotificationRule *, MSOrcError *))callback;

- (MSGraphPrivilegedOperationNotificationRuleCollectionFetcher *)select:(NSString *)params;
- (MSGraphPrivilegedOperationNotificationRuleCollectionFetcher *)filter:(NSString *)params;
- (MSGraphPrivilegedOperationNotificationRuleCollectionFetcher *)search:(NSString *)params;
- (MSGraphPrivilegedOperationNotificationRuleCollectionFetcher *)top:(int)value;
- (MSGraphPrivilegedOperationNotificationRuleCollectionFetcher *)skip:(int)value;
- (MSGraphPrivilegedOperationNotificationRuleCollectionFetcher *)expand:(NSString *)value;
- (MSGraphPrivilegedOperationNotificationRuleCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphPrivilegedOperationNotificationRuleCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphPrivilegedOperationNotificationRuleCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
