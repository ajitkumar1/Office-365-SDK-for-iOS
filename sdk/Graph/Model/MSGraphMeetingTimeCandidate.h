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



#ifndef MSGRAPHMEETINGTIMECANDIDATE_H
#define MSGRAPHMEETINGTIMECANDIDATE_H

#import <Foundation/Foundation.h>

@class MSGraphTimeSlot;
@class MSGraphAttendeeAvailability;
@class MSGraphLocation;
#import "MSGraphFreeBusyStatus.h"
#import "core/MSOrcBaseEntity.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSGraphMeetingTimeCandidate
 *
 */
@interface MSGraphMeetingTimeCandidate : MSOrcBaseEntity <MSOrcInteroperableWithDictionary>

/** Property meetingTimeSlot
 *
 */
@property (nonatomic,  copy, setter=setMeetingTimeSlot:, getter=meetingTimeSlot) MSGraphTimeSlot * meetingTimeSlot;

/** Property confidence
 *
 */
@property (nonatomic,  setter=setConfidence:, getter=confidence) double confidence;

/** Property score
 *
 */
@property (nonatomic,  setter=setScore:, getter=score) int score;

/** Property organizerAvailability
 *
 */
@property (nonatomic,  setter=setOrganizerAvailability:, getter=organizerAvailability) MSGraphFreeBusyStatus organizerAvailability;

- (void)setOrganizerAvailabilityString:(NSString *)string;

/** Property attendeeAvailability
 *
 */
@property (nonatomic,  copy, setter=setAttendeeAvailability:, getter=attendeeAvailability) NSMutableArray * attendeeAvailability;

/** Property locations
 *
 */
@property (nonatomic,  copy, setter=setLocations:, getter=locations) NSMutableArray * locations;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
