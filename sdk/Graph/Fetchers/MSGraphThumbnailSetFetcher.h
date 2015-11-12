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



#ifndef MSGRAPHTHUMBNAILSETFETCHER_H
#define MSGRAPHTHUMBNAILSETFETCHER_H

#import "MSGraphModels.h"
#import "api/api.h"
#import "core/MSOrcEntityFetcher.h"

@class MSGraphThumbnailFetcher;
@class MSGraphThumbnailSetOperations;


/** MSGraphThumbnailSetFetcher
 *
 */
@interface MSGraphThumbnailSetFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphThumbnailSetOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSGraphThumbnailSet *, MSOrcError *))callback;
- (void)update:(MSGraphThumbnailSet *)thumbnailSet callback:(void (^)(MSGraphThumbnailSet *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSGraphThumbnailSetFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphThumbnailSetFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphThumbnailSetFetcher *)select:(NSString *)params;
- (MSGraphThumbnailSetFetcher *)expand:(NSString *)value;

@end

#endif