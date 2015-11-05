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



#import "MSOutlookRecurrenceRangeType.h"

@implementation MSOutlookRecurrenceRangeTypeSerializer

+(MSOutlookRecurrenceRangeType) fromString:(NSString *) string {

    static NSDictionary *stringMappings=nil;
    
    if(stringMappings==nil)
    {
        stringMappings=[[NSDictionary alloc] initWithObjectsAndKeys:
         [NSNumber numberWithInt:MSOutlookRecurrenceRangeTypeEndDate], @"EndDate", [NSNumber numberWithInt:MSOutlookRecurrenceRangeTypeNoEnd], @"NoEnd", [NSNumber numberWithInt:MSOutlookRecurrenceRangeTypeNumbered], @"Numbered",
            nil        
        ];
    }
    
    return [stringMappings[string] intValue];

}

+(NSString *) toString: (MSOutlookRecurrenceRangeType) value {

    static NSDictionary *stringMappings=nil;
    
    if(stringMappings==nil)
    {
        stringMappings=[[NSDictionary alloc] initWithObjectsAndKeys:
         @"EndDate", [NSNumber numberWithInt:MSOutlookRecurrenceRangeTypeEndDate], @"NoEnd", [NSNumber numberWithInt:MSOutlookRecurrenceRangeTypeNoEnd], @"Numbered", [NSNumber numberWithInt:MSOutlookRecurrenceRangeTypeNumbered],
            nil        
        ];
    }
    
    return stringMappings[[NSNumber numberWithInt:value]];
}

@end

