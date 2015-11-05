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



#ifndef MSOUTLOOKCONTACTFOLDERFETCHER_H
#define MSOUTLOOKCONTACTFOLDERFETCHER_H

#import <orc.h>
#import "MSOutlookModels.h"
#import "MSOrcEntityFetcher.h"

@class MSOutlookContactCollectionFetcher;
@class MSOutlookContactCollectionFetcher;
@class MSOutlookContactFetcher;
@class MSOutlookContactFolderFetcher;
@class MSOutlookContactFolderOperations;


/** MSOutlookContactFolderFetcher
 *
 */
@interface MSOutlookContactFolderFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSOutlookContactFolderOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSOutlookContactFolder *, MSOrcError *))callback;
- (void)update:(MSOutlookContactFolder *)ContactFolder callback:(void (^)(MSOutlookContactFolder *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSOutlookContactFolderFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOutlookContactFolderFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSOutlookContactFolderFetcher *)select:(NSString *)params;
- (MSOutlookContactFolderFetcher *)expand:(NSString *)value;
@property (strong, nonatomic, readonly, getter=contacts) MSOutlookContactCollectionFetcher *contacts;

- (MSOutlookContactFetcher *)contactsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=childFolders) MSOutlookContactFolderCollectionFetcher *childFolders;

- (MSOutlookContactFolderFetcher *)childFoldersById:(id)identifier;


@end

#endif
