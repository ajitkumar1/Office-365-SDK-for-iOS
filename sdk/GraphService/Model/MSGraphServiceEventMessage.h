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


#ifndef MSGRAPHSERVICEEVENTMESSAGE_H
#define MSGRAPHSERVICEEVENTMESSAGE_H

#import <Foundation/Foundation.h>
#import "core/MSOrcChangesTrackingArray.h"

@class MSGraphServiceEvent;
#import "MSGraphServiceMeetingMessageType.h"
#import "MSGraphServiceMessage.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSGraphServiceEventMessage
 *
 */
@interface MSGraphServiceEventMessage : MSGraphServiceMessage <MSOrcInteroperableWithDictionary>

/** Property meetingMessageType
 *
 */
@property (nonatomic,  setter=setMeetingMessageType:, getter=meetingMessageType) MSGraphServiceMeetingMessageType meetingMessageType;

- (void)setMeetingMessageTypeString:(NSString *)string;

/** Property event
 *
 */
@property (nonatomic,  copy, setter=setEvent:, getter=event) MSGraphServiceEvent * event;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
