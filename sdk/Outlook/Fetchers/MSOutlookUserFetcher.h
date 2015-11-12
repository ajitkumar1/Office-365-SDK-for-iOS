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



#ifndef MSOUTLOOKUSERFETCHER_H
#define MSOUTLOOKUSERFETCHER_H

#import "MSOutlookModels.h"
#import "api/api.h"
#import "core/MSOrcEntityFetcher.h"

@class MSOutlookMessageCollectionFetcher;
@class MSOutlookFolderCollectionFetcher;
@class MSOutlookCalendarFetcher;
@class MSOutlookCalendarCollectionFetcher;
@class MSOutlookCalendarGroupCollectionFetcher;
@class MSOutlookEventCollectionFetcher;
@class MSOutlookContactCollectionFetcher;
@class MSOutlookContactFolderCollectionFetcher;
@class MSOutlookFolderFetcher;
@class MSOutlookMessageCollectionFetcher;
@class MSOutlookFolderCollectionFetcher;
@class MSOutlookCalendarFetcher;
@class MSOutlookCalendarCollectionFetcher;
@class MSOutlookCalendarGroupCollectionFetcher;
@class MSOutlookEventCollectionFetcher;
@class MSOutlookContactCollectionFetcher;
@class MSOutlookContactFolderCollectionFetcher;
@class MSOutlookFolderFetcher;
@class MSOutlookMessageFetcher;
@class MSOutlookFolderFetcher;
@class MSOutlookCalendarFetcher;
@class MSOutlookCalendarGroupFetcher;
@class MSOutlookEventFetcher;
@class MSOutlookContactFetcher;
@class MSOutlookContactFolderFetcher;
@class MSOutlookUserOperations;


/** MSOutlookUserFetcher
 *
 */
@interface MSOutlookUserFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSOutlookUserOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSOutlookUser *, MSOrcError *))callback;
- (void)update:(MSOutlookUser *)User callback:(void (^)(MSOutlookUser *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSOutlookUserFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOutlookUserFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSOutlookUserFetcher *)select:(NSString *)params;
- (MSOutlookUserFetcher *)expand:(NSString *)value;
@property (strong, nonatomic, readonly, getter=messages) MSOutlookMessageCollectionFetcher *messages;

- (MSOutlookMessageFetcher *)messagesById:(id)identifier;

@property (strong, nonatomic, readonly, getter=folders) MSOutlookFolderCollectionFetcher *folders;

- (MSOutlookFolderFetcher *)foldersById:(id)identifier;


@property (strong, nonatomic, readonly, getter=calendar) MSOutlookCalendarFetcher *calendar;
@property (strong, nonatomic, readonly, getter=calendars) MSOutlookCalendarCollectionFetcher *calendars;

- (MSOutlookCalendarFetcher *)calendarsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=calendarGroups) MSOutlookCalendarGroupCollectionFetcher *calendarGroups;

- (MSOutlookCalendarGroupFetcher *)calendarGroupsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=calendarView) MSOutlookEventCollectionFetcher *calendarView;

- (MSOutlookEventFetcher *)calendarViewById:(id)identifier;

@property (strong, nonatomic, readonly, getter=events) MSOutlookEventCollectionFetcher *events;

- (MSOutlookEventFetcher *)eventsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=contacts) MSOutlookContactCollectionFetcher *contacts;

- (MSOutlookContactFetcher *)contactsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=contactFolders) MSOutlookContactFolderCollectionFetcher *contactFolders;

- (MSOutlookContactFolderFetcher *)contactFoldersById:(id)identifier;


@property (strong, nonatomic, readonly, getter=rootFolder) MSOutlookFolderFetcher *rootFolder;

@end

#endif
