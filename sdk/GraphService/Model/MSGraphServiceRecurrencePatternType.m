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



#import "MSGraphServiceRecurrencePatternType.h"

@implementation MSGraphServiceRecurrencePatternTypeSerializer

+(MSGraphServiceRecurrencePatternType) fromString:(NSString *) string {

    static NSDictionary *stringMappings=nil;
    
    if(stringMappings==nil)
    {
        stringMappings=[[NSDictionary alloc] initWithObjectsAndKeys:
         [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeDaily], @"Daily", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeWeekly], @"Weekly", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeAbsoluteMonthly], @"AbsoluteMonthly", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeRelativeMonthly], @"RelativeMonthly", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeAbsoluteYearly], @"AbsoluteYearly", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeRelativeYearly], @"RelativeYearly",
            nil        
        ];
    }
    
    return [stringMappings[string] intValue];

}

+(NSString *) toString: (MSGraphServiceRecurrencePatternType) value {

    static NSDictionary *stringMappings=nil;
    
    if(stringMappings==nil)
    {
        stringMappings=[[NSDictionary alloc] initWithObjectsAndKeys:
         @"Daily", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeDaily], @"Weekly", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeWeekly], @"AbsoluteMonthly", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeAbsoluteMonthly], @"RelativeMonthly", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeRelativeMonthly], @"AbsoluteYearly", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeAbsoluteYearly], @"RelativeYearly", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeRelativeYearly],
            nil        
        ];
    }
    
    return stringMappings[[NSNumber numberWithInt:value]];
}

@end

