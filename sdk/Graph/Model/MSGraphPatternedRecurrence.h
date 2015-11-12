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



#ifndef MSGRAPHPATTERNEDRECURRENCE_H
#define MSGRAPHPATTERNEDRECURRENCE_H

#import <Foundation/Foundation.h>

@class MSGraphRecurrencePattern;
@class MSGraphRecurrenceRange;
#import "core/MSOrcBaseEntity.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSGraphPatternedRecurrence
 *
 */
@interface MSGraphPatternedRecurrence : MSOrcBaseEntity <MSOrcInteroperableWithDictionary>

/** Property pattern
 *
 */
@property (nonatomic,  copy, setter=setPattern:, getter=pattern) MSGraphRecurrencePattern * pattern;

/** Property range
 *
 */
@property (nonatomic,  copy, setter=setRange:, getter=range) MSGraphRecurrenceRange * range;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
