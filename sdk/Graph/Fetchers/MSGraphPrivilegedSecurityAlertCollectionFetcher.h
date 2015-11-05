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


#ifndef MSGRAPHPRIVILEGEDSECURITYALERTCOLLECTIONFETCHER_H
#define MSGRAPHPRIVILEGEDSECURITYALERTCOLLECTIONFETCHER_H

@class MSGraphPrivilegedSecurityAlertFetcher;



#import <orc.h>
#import "MSGraphModels.h"

/** MSGraphPrivilegedSecurityAlertCollectionFetcher
 *
 */
@interface MSGraphPrivilegedSecurityAlertCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSGraphPrivilegedSecurityAlertFetcher *)getById: (id) identifier;
- (void)add:(MSGraphPrivilegedSecurityAlert *)entity callback:(void (^)(MSGraphPrivilegedSecurityAlert *, MSOrcError *))callback;

- (MSGraphPrivilegedSecurityAlertCollectionFetcher *)select:(NSString *)params;
- (MSGraphPrivilegedSecurityAlertCollectionFetcher *)filter:(NSString *)params;
- (MSGraphPrivilegedSecurityAlertCollectionFetcher *)search:(NSString *)params;
- (MSGraphPrivilegedSecurityAlertCollectionFetcher *)top:(int)value;
- (MSGraphPrivilegedSecurityAlertCollectionFetcher *)skip:(int)value;
- (MSGraphPrivilegedSecurityAlertCollectionFetcher *)expand:(NSString *)value;
- (MSGraphPrivilegedSecurityAlertCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphPrivilegedSecurityAlertCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphPrivilegedSecurityAlertCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
