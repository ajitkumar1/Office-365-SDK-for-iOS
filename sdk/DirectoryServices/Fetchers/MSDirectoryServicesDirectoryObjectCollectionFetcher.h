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


#ifndef MSDIRECTORYSERVICESDIRECTORYOBJECTCOLLECTIONFETCHER_H
#define MSDIRECTORYSERVICESDIRECTORYOBJECTCOLLECTIONFETCHER_H

@class MSDirectoryServicesDirectoryObjectFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "MSDirectoryServicesModels.h"

/** MSDirectoryServicesDirectoryObjectCollectionFetcher
 *
 */
@interface MSDirectoryServicesDirectoryObjectCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSDirectoryServicesDirectoryObjectFetcher *)getById: (id) identifier;
- (void)add:(MSDirectoryServicesDirectoryObject *)entity callback:(void (^)(MSDirectoryServicesDirectoryObject *, MSOrcError *))callback;

- (MSDirectoryServicesDirectoryObjectCollectionFetcher *)select:(NSString *)params;
- (MSDirectoryServicesDirectoryObjectCollectionFetcher *)filter:(NSString *)params;
- (MSDirectoryServicesDirectoryObjectCollectionFetcher *)search:(NSString *)params;
- (MSDirectoryServicesDirectoryObjectCollectionFetcher *)top:(int)value;
- (MSDirectoryServicesDirectoryObjectCollectionFetcher *)skip:(int)value;
- (MSDirectoryServicesDirectoryObjectCollectionFetcher *)expand:(NSString *)value;
- (MSDirectoryServicesDirectoryObjectCollectionFetcher *)orderBy:(NSString *)params;
- (MSDirectoryServicesDirectoryObjectCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSDirectoryServicesDirectoryObjectCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif