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



#ifndef MSONENOTEAPISITECOLLECTION_FETCHER_H
#define MSONENOTEAPISITECOLLECTION_FETCHER_H

#import "MSOneNoteApiModels.h"
#import "api/api.h"
#import "core/core.h"
#import "core/MSOrcEntityFetcher.h"

@class MSOneNoteApiSiteCollectionFetcher;
@class MSOneNoteApiSiteCollectionFetcher;
@class MSOneNoteApiSiteFetcher;
@class MSOneNoteApiSiteCollection_Operations;


/** MSOneNoteApiSiteCollection_Fetcher
 *
 */
@interface MSOneNoteApiSiteCollection_Fetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSOneNoteApiSiteCollection_Operations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSOneNoteApiSiteCollection *, MSOrcError *))callback;
- (void)update:(MSOneNoteApiSiteCollection *)SiteCollection callback:(void (^)(MSOneNoteApiSiteCollection *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSOneNoteApiSiteCollection_Fetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOneNoteApiSiteCollection_Fetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSOneNoteApiSiteCollection_Fetcher *)select:(NSString *)params;
- (MSOneNoteApiSiteCollection_Fetcher *)expand:(NSString *)value;
@property (strong, nonatomic, readonly, getter=sites) MSOneNoteApiSiteCollectionFetcher *sites;

- (MSOneNoteApiSiteFetcher *)sitesById:(id)identifier;


@end

#endif
