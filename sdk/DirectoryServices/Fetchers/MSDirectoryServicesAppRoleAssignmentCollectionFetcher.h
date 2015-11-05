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


#ifndef MSDIRECTORYSERVICESAPPROLEASSIGNMENTCOLLECTIONFETCHER_H
#define MSDIRECTORYSERVICESAPPROLEASSIGNMENTCOLLECTIONFETCHER_H

@class MSDirectoryServicesAppRoleAssignmentFetcher;



#import <orc.h>
#import "MSDirectoryServicesModels.h"

/** MSDirectoryServicesAppRoleAssignmentCollectionFetcher
 *
 */
@interface MSDirectoryServicesAppRoleAssignmentCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSDirectoryServicesAppRoleAssignmentFetcher *)getById: (id) identifier;
- (void)add:(MSDirectoryServicesAppRoleAssignment *)entity callback:(void (^)(MSDirectoryServicesAppRoleAssignment *, MSOrcError *))callback;

- (MSDirectoryServicesAppRoleAssignmentCollectionFetcher *)select:(NSString *)params;
- (MSDirectoryServicesAppRoleAssignmentCollectionFetcher *)filter:(NSString *)params;
- (MSDirectoryServicesAppRoleAssignmentCollectionFetcher *)search:(NSString *)params;
- (MSDirectoryServicesAppRoleAssignmentCollectionFetcher *)top:(int)value;
- (MSDirectoryServicesAppRoleAssignmentCollectionFetcher *)skip:(int)value;
- (MSDirectoryServicesAppRoleAssignmentCollectionFetcher *)expand:(NSString *)value;
- (MSDirectoryServicesAppRoleAssignmentCollectionFetcher *)orderBy:(NSString *)params;
- (MSDirectoryServicesAppRoleAssignmentCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSDirectoryServicesAppRoleAssignmentCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
