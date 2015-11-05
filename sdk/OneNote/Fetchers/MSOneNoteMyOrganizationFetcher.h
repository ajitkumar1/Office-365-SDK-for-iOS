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



#ifndef MSONENOTEMYORGANIZATIONFETCHER_H
#define MSONENOTEMYORGANIZATIONFETCHER_H

#import <orc.h>
#import "MSOneNoteModels.h"
#import "MSOrcEntityFetcher.h"

@class MSOneNoteSiteCollection_CollectionFetcher;
@class MSOneNoteGroupCollectionFetcher;
@class MSOneNoteSiteCollection_CollectionFetcher;
@class MSOneNoteGroupCollectionFetcher;
@class MSOneNoteSiteCollection_Fetcher;
@class MSOneNoteGroupFetcher;
@class MSOneNoteMyOrganizationOperations;


/** MSOneNoteMyOrganizationFetcher
 *
 */
@interface MSOneNoteMyOrganizationFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSOneNoteMyOrganizationOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSOneNoteMyOrganization *, MSOrcError *))callback;
- (void)update:(MSOneNoteMyOrganization *)MyOrganization callback:(void (^)(MSOneNoteMyOrganization *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSOneNoteMyOrganizationFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOneNoteMyOrganizationFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSOneNoteMyOrganizationFetcher *)select:(NSString *)params;
- (MSOneNoteMyOrganizationFetcher *)expand:(NSString *)value;
@property (strong, nonatomic, readonly, getter=siteCollections) MSOneNoteSiteCollection_CollectionFetcher *siteCollections;

- (MSOneNoteSiteCollection_Fetcher *)siteCollectionsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=groups) MSOneNoteGroupCollectionFetcher *groups;

- (MSOneNoteGroupFetcher *)groupsById:(id)identifier;


@end

#endif
