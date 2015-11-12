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



#ifndef MSOUTLOOKMESSAGEFETCHER_H
#define MSOUTLOOKMESSAGEFETCHER_H

#import "MSOutlookModels.h"
#import "api/api.h"
#import "core/MSOrcEntityFetcher.h"

@class MSOutlookItemBodyFetcher;
@class MSOutlookRecipientFetcher;
@class MSOutlookRecipientCollectionFetcher;
@class MSOutlookAttachmentCollectionFetcher;
@class MSOutlookEventMessageFetcher;	
@class MSOutlookAttachmentCollectionFetcher;
@class MSOutlookAttachmentFetcher;
@class MSOutlookMessageOperations;


/** MSOutlookMessageFetcher
 *
 */
@interface MSOutlookMessageFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSOutlookMessageOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSOutlookMessage *, MSOrcError *))callback;
- (void)update:(MSOutlookMessage *)Message callback:(void (^)(MSOutlookMessage *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSOutlookMessageFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOutlookMessageFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSOutlookMessageFetcher *)select:(NSString *)params;
- (MSOutlookMessageFetcher *)expand:(NSString *)value;
@property (strong, nonatomic, readonly, getter=attachments) MSOutlookAttachmentCollectionFetcher *attachments;

- (MSOutlookAttachmentFetcher *)attachmentsById:(id)identifier;

- (MSOutlookEventMessageFetcher *)asEventMessage;	

@end

#endif
