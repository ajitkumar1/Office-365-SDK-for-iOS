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



#ifndef MSGRAPHCONTACTFOLDERFETCHER_H
#define MSGRAPHCONTACTFOLDERFETCHER_H

#import "MSGraphModels.h"
#import "api/api.h"
#import "core/MSOrcEntityFetcher.h"

@class MSGraphContactCollectionFetcher;
@class MSGraphContactCollectionFetcher;
@class MSGraphContactFetcher;
@class MSGraphContactFolderFetcher;
@class MSGraphContactFolderOperations;


/** MSGraphContactFolderFetcher
 *
 */
@interface MSGraphContactFolderFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphContactFolderOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSGraphContactFolder *, MSOrcError *))callback;
- (void)update:(MSGraphContactFolder *)ContactFolder callback:(void (^)(MSGraphContactFolder *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSGraphContactFolderFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphContactFolderFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphContactFolderFetcher *)select:(NSString *)params;
- (MSGraphContactFolderFetcher *)expand:(NSString *)value;
@property (strong, nonatomic, readonly, getter=contacts) MSGraphContactCollectionFetcher *contacts;

- (MSGraphContactFetcher *)contactsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=childFolders) MSGraphContactFolderCollectionFetcher *childFolders;

- (MSGraphContactFolderFetcher *)childFoldersById:(id)identifier;


@end

#endif
