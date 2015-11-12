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



#ifndef MSGRAPHUSERFETCHER_H
#define MSGRAPHUSERFETCHER_H

#import "MSGraphModels.h"
#import "api/api.h"
#import "core/MSOrcEntityFetcher.h"

@class MSGraphAssignedLicenseCollectionFetcher;
@class MSGraphAssignedPlanCollectionFetcher;
@class MSGraphPasswordProfileFetcher;
@class MSGraphProvisionedPlanCollectionFetcher;
@class MSGraphProvisioningErrorCollectionFetcher;
@class MSGraphAppRoleAssignmentCollectionFetcher;
@class MSGraphOAuth2PermissionGrantCollectionFetcher;
@class MSGraphDirectoryObjectCollectionFetcher;
@class MSGraphDirectoryObjectFetcher;
@class MSGraphMessageCollectionFetcher;
@class MSGraphGroupCollectionFetcher;
@class MSGraphMailFolderCollectionFetcher;
@class MSGraphCalendarFetcher;
@class MSGraphCalendarCollectionFetcher;
@class MSGraphCalendarGroupCollectionFetcher;
@class MSGraphEventCollectionFetcher;
@class MSGraphContactCollectionFetcher;
@class MSGraphContactFolderCollectionFetcher;
@class MSGraphInferenceClassificationFetcher;
@class MSGraphMailFolderFetcher;
@class MSGraphProfilePhotoFetcher;
@class MSGraphProfilePhotoCollectionFetcher;
@class MSGraphDriveFetcher;
@class MSGraphItemCollectionFetcher;
@class MSGraphTaskCollectionFetcher;
@class MSGraphPlanCollectionFetcher;
@class MSGraphNotesFetcher;
@class MSGraphAppRoleAssignmentCollectionFetcher;
@class MSGraphOAuth2PermissionGrantCollectionFetcher;
@class MSGraphDirectoryObjectCollectionFetcher;
@class MSGraphDirectoryObjectFetcher;
@class MSGraphMessageCollectionFetcher;
@class MSGraphGroupCollectionFetcher;
@class MSGraphMailFolderCollectionFetcher;
@class MSGraphCalendarFetcher;
@class MSGraphCalendarCollectionFetcher;
@class MSGraphCalendarGroupCollectionFetcher;
@class MSGraphEventCollectionFetcher;
@class MSGraphContactCollectionFetcher;
@class MSGraphContactFolderCollectionFetcher;
@class MSGraphInferenceClassificationFetcher;
@class MSGraphMailFolderFetcher;
@class MSGraphProfilePhotoFetcher;
@class MSGraphProfilePhotoCollectionFetcher;
@class MSGraphDriveFetcher;
@class MSGraphItemCollectionFetcher;
@class MSGraphTaskCollectionFetcher;
@class MSGraphPlanCollectionFetcher;
@class MSGraphNotesFetcher;
@class MSGraphAppRoleAssignmentFetcher;
@class MSGraphOAuth2PermissionGrantFetcher;
@class MSGraphDirectoryObjectFetcher;
@class MSGraphMessageFetcher;
@class MSGraphGroupFetcher;
@class MSGraphMailFolderFetcher;
@class MSGraphCalendarFetcher;
@class MSGraphCalendarGroupFetcher;
@class MSGraphEventFetcher;
@class MSGraphContactFetcher;
@class MSGraphContactFolderFetcher;
@class MSGraphProfilePhotoFetcher;
@class MSGraphItemFetcher;
@class MSGraphUserFetcher;
@class MSGraphTaskFetcher;
@class MSGraphPlanFetcher;
@class MSGraphUserOperations;


/** MSGraphUserFetcher
 *
 */
@interface MSGraphUserFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphUserOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSGraphUser *, MSOrcError *))callback;
- (void)update:(MSGraphUser *)User callback:(void (^)(MSGraphUser *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSGraphUserFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphUserFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphUserFetcher *)select:(NSString *)params;
- (MSGraphUserFetcher *)expand:(NSString *)value;
@property (strong, nonatomic, readonly, getter=appRoleAssignments) MSGraphAppRoleAssignmentCollectionFetcher *appRoleAssignments;

- (MSGraphAppRoleAssignmentFetcher *)appRoleAssignmentsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=oauth2PermissionGrants) MSGraphOAuth2PermissionGrantCollectionFetcher *oauth2PermissionGrants;

- (MSGraphOAuth2PermissionGrantFetcher *)oauth2PermissionGrantsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=ownedDevices) MSGraphDirectoryObjectCollectionFetcher *ownedDevices;

- (MSGraphDirectoryObjectFetcher *)ownedDevicesById:(id)identifier;

@property (strong, nonatomic, readonly, getter=registeredDevices) MSGraphDirectoryObjectCollectionFetcher *registeredDevices;

- (MSGraphDirectoryObjectFetcher *)registeredDevicesById:(id)identifier;


@property (strong, nonatomic, readonly, getter=manager) MSGraphDirectoryObjectFetcher *manager;
@property (strong, nonatomic, readonly, getter=directReports) MSGraphDirectoryObjectCollectionFetcher *directReports;

- (MSGraphDirectoryObjectFetcher *)directReportsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=memberOf) MSGraphDirectoryObjectCollectionFetcher *memberOf;

- (MSGraphDirectoryObjectFetcher *)memberOfById:(id)identifier;

@property (strong, nonatomic, readonly, getter=createdObjects) MSGraphDirectoryObjectCollectionFetcher *createdObjects;

- (MSGraphDirectoryObjectFetcher *)createdObjectsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=ownedObjects) MSGraphDirectoryObjectCollectionFetcher *ownedObjects;

- (MSGraphDirectoryObjectFetcher *)ownedObjectsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=messages) MSGraphMessageCollectionFetcher *messages;

- (MSGraphMessageFetcher *)messagesById:(id)identifier;

@property (strong, nonatomic, readonly, getter=joinedGroups) MSGraphGroupCollectionFetcher *joinedGroups;

- (MSGraphGroupFetcher *)joinedGroupsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=mailFolders) MSGraphMailFolderCollectionFetcher *mailFolders;

- (MSGraphMailFolderFetcher *)mailFoldersById:(id)identifier;


@property (strong, nonatomic, readonly, getter=calendar) MSGraphCalendarFetcher *calendar;
@property (strong, nonatomic, readonly, getter=calendars) MSGraphCalendarCollectionFetcher *calendars;

- (MSGraphCalendarFetcher *)calendarsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=calendarGroups) MSGraphCalendarGroupCollectionFetcher *calendarGroups;

- (MSGraphCalendarGroupFetcher *)calendarGroupsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=calendarView) MSGraphEventCollectionFetcher *calendarView;

- (MSGraphEventFetcher *)calendarViewById:(id)identifier;

@property (strong, nonatomic, readonly, getter=events) MSGraphEventCollectionFetcher *events;

- (MSGraphEventFetcher *)eventsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=contacts) MSGraphContactCollectionFetcher *contacts;

- (MSGraphContactFetcher *)contactsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=contactFolders) MSGraphContactFolderCollectionFetcher *contactFolders;

- (MSGraphContactFolderFetcher *)contactFoldersById:(id)identifier;


@property (strong, nonatomic, readonly, getter=inferenceClassification) MSGraphInferenceClassificationFetcher *inferenceClassification;

@property (strong, nonatomic, readonly, getter=rootFolder) MSGraphMailFolderFetcher *rootFolder;

@property (strong, nonatomic, readonly, getter=photo) MSGraphProfilePhotoFetcher *photo;
@property (strong, nonatomic, readonly, getter=photos) MSGraphProfilePhotoCollectionFetcher *photos;

- (MSGraphProfilePhotoFetcher *)photosById:(id)identifier;


@property (strong, nonatomic, readonly, getter=drive) MSGraphDriveFetcher *drive;
@property (strong, nonatomic, readonly, getter=trendingAround) MSGraphItemCollectionFetcher *trendingAround;

- (MSGraphItemFetcher *)trendingAroundById:(id)identifier;

@property (strong, nonatomic, readonly, getter=workingWith) MSGraphUserCollectionFetcher *workingWith;

- (MSGraphUserFetcher *)workingWithById:(id)identifier;

@property (strong, nonatomic, readonly, getter=tasks) MSGraphTaskCollectionFetcher *tasks;

- (MSGraphTaskFetcher *)tasksById:(id)identifier;

@property (strong, nonatomic, readonly, getter=plans) MSGraphPlanCollectionFetcher *plans;

- (MSGraphPlanFetcher *)plansById:(id)identifier;


@property (strong, nonatomic, readonly, getter=notes) MSGraphNotesFetcher *notes;

@end

#endif