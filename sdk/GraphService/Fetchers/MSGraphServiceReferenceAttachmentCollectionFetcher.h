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


#ifndef MSGRAPHSERVICEREFERENCEATTACHMENTCOLLECTIONFETCHER_H
#define MSGRAPHSERVICEREFERENCEATTACHMENTCOLLECTIONFETCHER_H

@class MSGraphServiceReferenceAttachmentFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSGraphServiceModels.h"

/** MSGraphServiceReferenceAttachmentCollectionFetcher
 *
 */
@interface MSGraphServiceReferenceAttachmentCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback;

- (MSGraphServiceReferenceAttachmentFetcher *)getById: (id) identifier;
- (void)add:(MSGraphServiceReferenceAttachment *)entity callback:(void (^)(MSGraphServiceReferenceAttachment *, MSOrcError *))callback;

- (MSGraphServiceReferenceAttachmentCollectionFetcher *)select:(NSString *)params;
- (MSGraphServiceReferenceAttachmentCollectionFetcher *)filter:(NSString *)params;
- (MSGraphServiceReferenceAttachmentCollectionFetcher *)search:(NSString *)params;
- (MSGraphServiceReferenceAttachmentCollectionFetcher *)top:(int)value;
- (MSGraphServiceReferenceAttachmentCollectionFetcher *)skip:(int)value;
- (MSGraphServiceReferenceAttachmentCollectionFetcher *)expand:(NSString *)value;
- (MSGraphServiceReferenceAttachmentCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphServiceReferenceAttachmentCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphServiceReferenceAttachmentCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
