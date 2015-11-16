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


#ifndef MSGRAPHSERVICEGROUP_H
#define MSGRAPHSERVICEGROUP_H

#import <Foundation/Foundation.h>
#import "core/MSOrcChangesTrackingArray.h"

@class MSGraphServiceDirectoryObject;
@class MSGraphServiceConversationThread;
@class MSGraphServiceCalendar;
@class MSGraphServiceEvent;
@class MSGraphServiceConversation;
@class MSGraphServiceProfilePhoto;
@class MSGraphServiceDrive;
#import "MSGraphServiceGroupAccessType.h"
#import "MSGraphServiceDirectoryObject.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSGraphServiceGroup
 *
 */
@interface MSGraphServiceGroup : MSGraphServiceDirectoryObject <MSOrcInteroperableWithDictionary>

/** Property _description
 *
 */
@property (nonatomic,  copy, setter=setDescription:, getter=_description) NSString * _description;

/** Property displayName
 *
 */
@property (nonatomic,  copy, setter=setDisplayName:, getter=displayName) NSString * displayName;

/** Property groupTypes
 *
 */
@property (nonatomic,  copy, setter=setGroupTypes:, getter=groupTypes) NSMutableArray * groupTypes;

/** Property mail
 *
 */
@property (nonatomic,  copy, setter=setMail:, getter=mail) NSString * mail;

/** Property mailEnabled
 *
 */
@property (nonatomic,  setter=setMailEnabled:, getter=mailEnabled) bool mailEnabled;

/** Property mailNickname
 *
 */
@property (nonatomic,  copy, setter=setMailNickname:, getter=mailNickname) NSString * mailNickname;

/** Property onPremisesLastSyncDateTime
 *
 */
@property (nonatomic,  copy, setter=setOnPremisesLastSyncDateTime:, getter=onPremisesLastSyncDateTime) NSDate * onPremisesLastSyncDateTime;

/** Property onPremisesSecurityIdentifier
 *
 */
@property (nonatomic,  copy, setter=setOnPremisesSecurityIdentifier:, getter=onPremisesSecurityIdentifier) NSString * onPremisesSecurityIdentifier;

/** Property onPremisesSyncEnabled
 *
 */
@property (nonatomic,  setter=setOnPremisesSyncEnabled:, getter=onPremisesSyncEnabled) bool onPremisesSyncEnabled;

/** Property proxyAddresses
 *
 */
@property (nonatomic,  copy, setter=setProxyAddresses:, getter=proxyAddresses) NSMutableArray * proxyAddresses;

/** Property securityEnabled
 *
 */
@property (nonatomic,  setter=setSecurityEnabled:, getter=securityEnabled) bool securityEnabled;

/** Property visibility
 *
 */
@property (nonatomic,  copy, setter=setVisibility:, getter=visibility) NSString * visibility;

/** Property accessType
 *
 */
@property (nonatomic,  setter=setAccessType:, getter=accessType) MSGraphServiceGroupAccessType accessType;

- (void)setAccessTypeString:(NSString *)string;

/** Property allowExternalSenders
 *
 */
@property (nonatomic,  setter=setAllowExternalSenders:, getter=allowExternalSenders) bool allowExternalSenders;

/** Property autoSubscribeNewMembers
 *
 */
@property (nonatomic,  setter=setAutoSubscribeNewMembers:, getter=autoSubscribeNewMembers) bool autoSubscribeNewMembers;

/** Property isFavorite
 *
 */
@property (nonatomic,  setter=setIsFavorite:, getter=isFavorite) bool isFavorite;

/** Property isSubscribedByMail
 *
 */
@property (nonatomic,  setter=setIsSubscribedByMail:, getter=isSubscribedByMail) bool isSubscribedByMail;

/** Property unseenCount
 *
 */
@property (nonatomic,  setter=setUnseenCount:, getter=unseenCount) int unseenCount;

/** Property members
 *
 */
@property (nonatomic,  copy, setter=setMembers:, getter=members) NSMutableArray * members;

/** Property memberOf
 *
 */
@property (nonatomic,  copy, setter=setMemberOf:, getter=memberOf) NSMutableArray * memberOf;

/** Property createdOnBehalfOf
 *
 */
@property (nonatomic,  copy, setter=setCreatedOnBehalfOf:, getter=createdOnBehalfOf) MSGraphServiceDirectoryObject * createdOnBehalfOf;

/** Property owners
 *
 */
@property (nonatomic,  copy, setter=setOwners:, getter=owners) NSMutableArray * owners;

/** Property threads
 *
 */
@property (nonatomic,  copy, setter=setThreads:, getter=threads) NSMutableArray * threads;

/** Property calendar
 *
 */
@property (nonatomic,  copy, setter=setCalendar:, getter=calendar) MSGraphServiceCalendar * calendar;

/** Property calendarView
 *
 */
@property (nonatomic,  copy, setter=setCalendarView:, getter=calendarView) NSMutableArray * calendarView;

/** Property events
 *
 */
@property (nonatomic,  copy, setter=setEvents:, getter=events) NSMutableArray * events;

/** Property conversations
 *
 */
@property (nonatomic,  copy, setter=setConversations:, getter=conversations) NSMutableArray * conversations;

/** Property photo
 *
 */
@property (nonatomic,  copy, setter=setPhoto:, getter=photo) MSGraphServiceProfilePhoto * photo;

/** Property acceptedSenders
 *
 */
@property (nonatomic,  copy, setter=setAcceptedSenders:, getter=acceptedSenders) NSMutableArray * acceptedSenders;

/** Property rejectedSenders
 *
 */
@property (nonatomic,  copy, setter=setRejectedSenders:, getter=rejectedSenders) NSMutableArray * rejectedSenders;

/** Property drive
 *
 */
@property (nonatomic,  copy, setter=setDrive:, getter=drive) MSGraphServiceDrive * drive;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
