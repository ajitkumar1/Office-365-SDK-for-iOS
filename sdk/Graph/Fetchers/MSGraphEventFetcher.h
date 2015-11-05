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



#ifndef MSGRAPHEVENTFETCHER_H
#define MSGRAPHEVENTFETCHER_H

#import <orc.h>
#import "MSGraphModels.h"
#import "MSOrcEntityFetcher.h"

@class MSGraphResponseStatusFetcher;
@class MSGraphItemBodyFetcher;
@class MSGraphDateTimeTimeZoneFetcher;
@class MSGraphLocationFetcher;
@class MSGraphPatternedRecurrenceFetcher;
@class MSGraphAttendeeCollectionFetcher;
@class MSGraphRecipientFetcher;
@class MSGraphCalendarFetcher;
@class MSGraphExtensionCollectionFetcher;
@class MSGraphAttachmentCollectionFetcher;
@class MSGraphCalendarFetcher;
@class MSGraphExtensionCollectionFetcher;
@class MSGraphAttachmentCollectionFetcher;
@class MSGraphEventFetcher;
@class MSGraphExtensionFetcher;
@class MSGraphAttachmentFetcher;
@class MSGraphEventOperations;


/** MSGraphEventFetcher
 *
 */
@interface MSGraphEventFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphEventOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSGraphEvent *, MSOrcError *))callback;
- (void)update:(MSGraphEvent *)Event callback:(void (^)(MSGraphEvent *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSGraphEventFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphEventFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphEventFetcher *)select:(NSString *)params;
- (MSGraphEventFetcher *)expand:(NSString *)value;

@property (strong, nonatomic, readonly, getter=calendar) MSGraphCalendarFetcher *calendar;
@property (strong, nonatomic, readonly, getter=instances) MSGraphEventCollectionFetcher *instances;

- (MSGraphEventFetcher *)instancesById:(id)identifier;

@property (strong, nonatomic, readonly, getter=extensions) MSGraphExtensionCollectionFetcher *extensions;

- (MSGraphExtensionFetcher *)extensionsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=attachments) MSGraphAttachmentCollectionFetcher *attachments;

- (MSGraphAttachmentFetcher *)attachmentsById:(id)identifier;


@end

#endif
