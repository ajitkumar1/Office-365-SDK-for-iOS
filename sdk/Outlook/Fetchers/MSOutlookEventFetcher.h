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



#ifndef MSOUTLOOKEVENTFETCHER_H
#define MSOUTLOOKEVENTFETCHER_H

#import "MSOutlookModels.h"
#import "api/api.h"
#import "core/MSOrcEntityFetcher.h"

@class MSOutlookResponseStatusFetcher;
@class MSOutlookItemBodyFetcher;
@class MSOutlookLocationFetcher;
@class MSOutlookPatternedRecurrenceFetcher;
@class MSOutlookAttendeeCollectionFetcher;
@class MSOutlookRecipientFetcher;
@class MSOutlookCalendarFetcher;
@class MSOutlookAttachmentCollectionFetcher;
@class MSOutlookCalendarFetcher;
@class MSOutlookAttachmentCollectionFetcher;
@class MSOutlookEventFetcher;
@class MSOutlookAttachmentFetcher;
@class MSOutlookEventOperations;


/** MSOutlookEventFetcher
 *
 */
@interface MSOutlookEventFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSOutlookEventOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSOutlookEvent *, MSOrcError *))callback;
- (void)update:(MSOutlookEvent *)Event callback:(void (^)(MSOutlookEvent *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSOutlookEventFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOutlookEventFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSOutlookEventFetcher *)select:(NSString *)params;
- (MSOutlookEventFetcher *)expand:(NSString *)value;

@property (strong, nonatomic, readonly, getter=calendar) MSOutlookCalendarFetcher *calendar;
@property (strong, nonatomic, readonly, getter=instances) MSOutlookEventCollectionFetcher *instances;

- (MSOutlookEventFetcher *)instancesById:(id)identifier;

@property (strong, nonatomic, readonly, getter=attachments) MSOutlookAttachmentCollectionFetcher *attachments;

- (MSOutlookAttachmentFetcher *)attachmentsById:(id)identifier;


@end

#endif
