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


#ifndef MSGRAPHCONTACTFOLDERCOLLECTIONFETCHER_H
#define MSGRAPHCONTACTFOLDERCOLLECTIONFETCHER_H

@class MSGraphContactFolderFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "MSGraphModels.h"

/** MSGraphContactFolderCollectionFetcher
 *
 */
@interface MSGraphContactFolderCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSGraphContactFolderFetcher *)getById: (id) identifier;
- (void)add:(MSGraphContactFolder *)entity callback:(void (^)(MSGraphContactFolder *, MSOrcError *))callback;

- (MSGraphContactFolderCollectionFetcher *)select:(NSString *)params;
- (MSGraphContactFolderCollectionFetcher *)filter:(NSString *)params;
- (MSGraphContactFolderCollectionFetcher *)search:(NSString *)params;
- (MSGraphContactFolderCollectionFetcher *)top:(int)value;
- (MSGraphContactFolderCollectionFetcher *)skip:(int)value;
- (MSGraphContactFolderCollectionFetcher *)expand:(NSString *)value;
- (MSGraphContactFolderCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphContactFolderCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphContactFolderCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
