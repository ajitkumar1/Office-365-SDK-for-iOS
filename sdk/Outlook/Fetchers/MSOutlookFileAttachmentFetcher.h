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



#ifndef MSOUTLOOKFILEATTACHMENTFETCHER_H
#define MSOUTLOOKFILEATTACHMENTFETCHER_H

#import "MSOutlookModels.h"
#import "api/api.h"
#import "core/MSOrcEntityFetcher.h"

@class MSOutlookFileAttachmentOperations;


/** MSOutlookFileAttachmentFetcher
 *
 */
@interface MSOutlookFileAttachmentFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSOutlookFileAttachmentOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSOutlookFileAttachment *, MSOrcError *))callback;
- (void)update:(MSOutlookFileAttachment *)FileAttachment callback:(void (^)(MSOutlookFileAttachment *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSOutlookFileAttachmentFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOutlookFileAttachmentFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSOutlookFileAttachmentFetcher *)select:(NSString *)params;
- (MSOutlookFileAttachmentFetcher *)expand:(NSString *)value;

@end

#endif
