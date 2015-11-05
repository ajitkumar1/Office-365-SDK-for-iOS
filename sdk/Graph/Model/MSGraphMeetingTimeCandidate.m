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



#import "MSGraphModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSGraphMeetingTimeCandidate
 *
 */
@implementation MSGraphMeetingTimeCandidate


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"MeetingTimeSlot", @"meetingTimeSlot", @"Confidence", @"confidence", @"Score", @"score", @"OrganizerAvailability", @"organizerAvailability", @"AttendeeAvailability", @"attendeeAvailability", @"Locations", @"locations", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.MeetingTimeCandidate";

        
		_attendeeAvailability = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_locations = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_meetingTimeSlot = [dic objectForKey: @"MeetingTimeSlot"] != nil ? [[MSGraphTimeSlot alloc] initWithDictionary: [dic objectForKey: @"MeetingTimeSlot"]] : _meetingTimeSlot;
		_confidence = [dic objectForKey: @"Confidence"] != nil ? [[dic objectForKey: @"Confidence"] doubleValue] : _confidence;
		_score = [dic objectForKey: @"Score"] != nil ? [[dic objectForKey: @"Score"] intValue] : _score;
		_organizerAvailability = [dic objectForKey: @"OrganizerAvailability"] != nil ? [MSGraphFreeBusyStatusSerializer fromString:[dic objectForKey: @"OrganizerAvailability"]] : _organizerAvailability;

        if([dic objectForKey: @"AttendeeAvailability"] != [NSNull null]){
            _attendeeAvailability = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"AttendeeAvailability"] count]];
            
            for (id object in [dic objectForKey: @"AttendeeAvailability"]) {
                [_attendeeAvailability addObject:[[MSGraphAttendeeAvailability alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"Locations"] != [NSNull null]){
            _locations = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"Locations"] count]];
            
            for (id object in [dic objectForKey: @"Locations"]) {
                [_locations addObject:[[MSGraphLocation alloc] initWithDictionary: object]];
            }
        }
        

    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys: 
    		 [_meetingTimeSlot toDictionary], @"MeetingTimeSlot",
		 [NSNumber numberWithDouble: _confidence], @"Confidence",
		 [NSNumber numberWithInt: _score], @"Score",
		 [MSGraphFreeBusyStatusSerializer toString:_organizerAvailability], @"OrganizerAvailability",
		 [[NSMutableArray alloc] init], @"AttendeeAvailability",
		 [[NSMutableArray alloc] init], @"Locations",
            nil];
}


/** Setter implementation for property meetingTimeSlot
 *
 */
- (void) setMeetingTimeSlot: (MSGraphTimeSlot *) value {
    _meetingTimeSlot = value;
    [self valueChangedFor:@"MeetingTimeSlot"];
}
       
/** Setter implementation for property confidence
 *
 */
- (void) setConfidence: (double) value {
    _confidence = value;
    [self valueChangedFor:@"Confidence"];
}
       
/** Setter implementation for property score
 *
 */
- (void) setScore: (int) value {
    _score = value;
    [self valueChangedFor:@"Score"];
}
       
/** Setter implementation for property organizerAvailability
 *
 */
- (void) setOrganizerAvailability: (MSGraphFreeBusyStatus) value {
    _organizerAvailability = value;
    [self valueChangedFor:@"OrganizerAvailability"];
}
       

- (void)setOrganizerAvailabilityString:(NSString *)string {
        
    _organizerAvailability = [MSGraphFreeBusyStatusSerializer fromString:string];
    [self valueChangedFor:@"OrganizerAvailability"]; 
}

/** Setter implementation for property attendeeAvailability
 *
 */
- (void) setAttendeeAvailability: (NSMutableArray *) value {
    _attendeeAvailability = value;
    [self valueChangedFor:@"AttendeeAvailability"];
}
       
/** Setter implementation for property locations
 *
 */
- (void) setLocations: (NSMutableArray *) value {
    _locations = value;
    [self valueChangedFor:@"Locations"];
}
       

@end
