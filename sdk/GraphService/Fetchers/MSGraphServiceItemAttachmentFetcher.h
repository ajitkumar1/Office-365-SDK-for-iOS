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



#ifndef MSGRAPHSERVICEITEMATTACHMENTFETCHER_H
#define MSGRAPHSERVICEITEMATTACHMENTFETCHER_H

#import "MSGraphServiceModels.h"
#import "api/api.h"
#import "core/core.h"
#import "core/MSOrcEntityFetcher.h"

@class MSGraphServiceOutlookItemFetcher;
@class MSGraphServiceOutlookItemFetcher;
@class MSGraphServiceItemAttachmentOperations;


/** MSGraphServiceItemAttachmentFetcher
 *
 */
@interface MSGraphServiceItemAttachmentFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphServiceItemAttachmentOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSGraphServiceItemAttachment *, MSOrcError *))callback;
- (void)update:(MSGraphServiceItemAttachment *)itemAttachment callback:(void (^)(MSGraphServiceItemAttachment *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSGraphServiceItemAttachmentFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphServiceItemAttachmentFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphServiceItemAttachmentFetcher *)select:(NSString *)params;
- (MSGraphServiceItemAttachmentFetcher *)expand:(NSString *)value;

@property (strong, nonatomic, readonly, getter=item) MSGraphServiceOutlookItemFetcher *item;

@end

#endif
