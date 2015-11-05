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


#ifndef MSOUTLOOKCALENDARGROUP_H
#define MSOUTLOOKCALENDARGROUP_H

#import <Foundation/Foundation.h>
#import "core/MSOrcObjectizer.h"

@class MSOutlookCalendar;
#import "MSOutlookEntity.h"
#import <api/MSOrcInteroperableWithDictionary.h>

/** Interface MSOutlookCalendarGroup
 *
 */
@interface MSOutlookCalendarGroup : MSOutlookEntity <MSOrcInteroperableWithDictionary>

/** Property name
 *
 */
@property (nonatomic,  copy, setter=setName:, getter=name) NSString * name;

/** Property classId
 *
 */
@property (nonatomic,  copy, setter=setClassId:, getter=classId) NSString * classId;

/** Property changeKey
 *
 */
@property (nonatomic,  copy, setter=setChangeKey:, getter=changeKey) NSString * changeKey;

/** Property calendars
 *
 */
@property (nonatomic,  copy, setter=setCalendars:, getter=calendars) NSMutableArray * calendars;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
