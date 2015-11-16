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



#ifndef MSGRAPHSERVICEFILEATTACHMENTFETCHER_H
#define MSGRAPHSERVICEFILEATTACHMENTFETCHER_H

#import "MSGraphServiceModels.h"
#import "api/api.h"
#import "core/core.h"
#import "core/MSOrcEntityFetcher.h"

@class MSGraphServiceFileAttachmentOperations;


/** MSGraphServiceFileAttachmentFetcher
 *
 */
@interface MSGraphServiceFileAttachmentFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphServiceFileAttachmentOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSGraphServiceFileAttachment *, MSOrcError *))callback;
- (void)update:(MSGraphServiceFileAttachment *)fileAttachment callback:(void (^)(MSGraphServiceFileAttachment *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSGraphServiceFileAttachmentFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphServiceFileAttachmentFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphServiceFileAttachmentFetcher *)select:(NSString *)params;
- (MSGraphServiceFileAttachmentFetcher *)expand:(NSString *)value;

@end

#endif
