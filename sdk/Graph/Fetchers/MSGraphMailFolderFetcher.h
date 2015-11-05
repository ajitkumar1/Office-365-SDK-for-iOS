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



#ifndef MSGRAPHMAILFOLDERFETCHER_H
#define MSGRAPHMAILFOLDERFETCHER_H

#import <orc.h>
#import "MSGraphModels.h"
#import "MSOrcEntityFetcher.h"

@class MSGraphMessageCollectionFetcher;
@class MSGraphMessageCollectionFetcher;
@class MSGraphMessageFetcher;
@class MSGraphMailFolderFetcher;
@class MSGraphMailFolderOperations;


/** MSGraphMailFolderFetcher
 *
 */
@interface MSGraphMailFolderFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphMailFolderOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSGraphMailFolder *, MSOrcError *))callback;
- (void)update:(MSGraphMailFolder *)MailFolder callback:(void (^)(MSGraphMailFolder *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSGraphMailFolderFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphMailFolderFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphMailFolderFetcher *)select:(NSString *)params;
- (MSGraphMailFolderFetcher *)expand:(NSString *)value;
@property (strong, nonatomic, readonly, getter=messages) MSGraphMessageCollectionFetcher *messages;

- (MSGraphMessageFetcher *)messagesById:(id)identifier;

@property (strong, nonatomic, readonly, getter=childFolders) MSGraphMailFolderCollectionFetcher *childFolders;

- (MSGraphMailFolderFetcher *)childFoldersById:(id)identifier;


@end

#endif
