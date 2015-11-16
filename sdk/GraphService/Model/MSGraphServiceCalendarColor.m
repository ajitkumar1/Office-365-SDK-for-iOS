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



#import "MSGraphServiceCalendarColor.h"

@implementation MSGraphServiceCalendarColorSerializer

+(MSGraphServiceCalendarColor) fromString:(NSString *) string {

    static NSDictionary *stringMappings=nil;
    
    if(stringMappings==nil)
    {
        stringMappings=[[NSDictionary alloc] initWithObjectsAndKeys:
         [NSNumber numberWithInt:MSGraphServiceCalendarColorLightBlue], @"LightBlue", [NSNumber numberWithInt:MSGraphServiceCalendarColorLightGreen], @"LightGreen", [NSNumber numberWithInt:MSGraphServiceCalendarColorLightOrange], @"LightOrange", [NSNumber numberWithInt:MSGraphServiceCalendarColorLightGray], @"LightGray", [NSNumber numberWithInt:MSGraphServiceCalendarColorLightYellow], @"LightYellow", [NSNumber numberWithInt:MSGraphServiceCalendarColorLightTeal], @"LightTeal", [NSNumber numberWithInt:MSGraphServiceCalendarColorLightPink], @"LightPink", [NSNumber numberWithInt:MSGraphServiceCalendarColorLightBrown], @"LightBrown", [NSNumber numberWithInt:MSGraphServiceCalendarColorLightRed], @"LightRed", [NSNumber numberWithInt:MSGraphServiceCalendarColorMaxColor], @"MaxColor", [NSNumber numberWithInt:MSGraphServiceCalendarColorAuto], @"Auto",
            nil        
        ];
    }
    
    return [stringMappings[string] intValue];

}

+(NSString *) toString: (MSGraphServiceCalendarColor) value {

    static NSDictionary *stringMappings=nil;
    
    if(stringMappings==nil)
    {
        stringMappings=[[NSDictionary alloc] initWithObjectsAndKeys:
         @"LightBlue", [NSNumber numberWithInt:MSGraphServiceCalendarColorLightBlue], @"LightGreen", [NSNumber numberWithInt:MSGraphServiceCalendarColorLightGreen], @"LightOrange", [NSNumber numberWithInt:MSGraphServiceCalendarColorLightOrange], @"LightGray", [NSNumber numberWithInt:MSGraphServiceCalendarColorLightGray], @"LightYellow", [NSNumber numberWithInt:MSGraphServiceCalendarColorLightYellow], @"LightTeal", [NSNumber numberWithInt:MSGraphServiceCalendarColorLightTeal], @"LightPink", [NSNumber numberWithInt:MSGraphServiceCalendarColorLightPink], @"LightBrown", [NSNumber numberWithInt:MSGraphServiceCalendarColorLightBrown], @"LightRed", [NSNumber numberWithInt:MSGraphServiceCalendarColorLightRed], @"MaxColor", [NSNumber numberWithInt:MSGraphServiceCalendarColorMaxColor], @"Auto", [NSNumber numberWithInt:MSGraphServiceCalendarColorAuto],
            nil        
        ];
    }
    
    return stringMappings[[NSNumber numberWithInt:value]];
}

@end

