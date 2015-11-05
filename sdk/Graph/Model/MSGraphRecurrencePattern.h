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



#ifndef MSGRAPHRECURRENCEPATTERN_H
#define MSGRAPHRECURRENCEPATTERN_H

#import <Foundation/Foundation.h>

#import "MSGraphRecurrencePatternType.h"
#import "MSGraphDayOfWeek.h"
#import "MSGraphWeekIndex.h"
#import "MSOrcBaseEntity.h"
#import <api/MSOrcInteroperableWithDictionary.h>

/** Interface MSGraphRecurrencePattern
 *
 */
@interface MSGraphRecurrencePattern : MSOrcBaseEntity <MSOrcInteroperableWithDictionary>

/** Property type
 *
 */
@property (nonatomic,  setter=setType:, getter=type) MSGraphRecurrencePatternType type;

- (void)setTypeString:(NSString *)string;

/** Property interval
 *
 */
@property (nonatomic,  setter=setInterval:, getter=interval) int interval;

/** Property month
 *
 */
@property (nonatomic,  setter=setMonth:, getter=month) int month;

/** Property dayOfMonth
 *
 */
@property (nonatomic,  setter=setDayOfMonth:, getter=dayOfMonth) int dayOfMonth;

/** Property daysOfWeek
 *
 */
@property (nonatomic,  setter=setDaysOfWeek:, getter=daysOfWeek) NSMutableArray * daysOfWeek;

/** Property firstDayOfWeek
 *
 */
@property (nonatomic,  setter=setFirstDayOfWeek:, getter=firstDayOfWeek) MSGraphDayOfWeek firstDayOfWeek;

- (void)setFirstDayOfWeekString:(NSString *)string;

/** Property index
 *
 */
@property (nonatomic,  setter=setIndex:, getter=index) MSGraphWeekIndex index;

- (void)setIndexString:(NSString *)string;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
