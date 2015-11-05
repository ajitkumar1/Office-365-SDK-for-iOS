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



/** Implementation for MSGraphPrivilegedRoleSettings
 *
 */
@implementation MSGraphPrivilegedRoleSettings


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"MinElevationDuration", @"minElevationDuration", @"MaxElavationDuration", @"maxElavationDuration", @"ElevationDuration", @"elevationDuration", @"RoleId", @"roleId", @"NotificationToUserOnElevation", @"notificationToUserOnElevation", @"TicketingInfoOnElevation", @"ticketingInfoOnElevation", @"MfaOnElevation", @"mfaOnElevation", @"LastGlobalAdmin", @"lastGlobalAdmin", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.PrivilegedRoleSettings";
        
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_minElevationDuration = [dic objectForKey: @"MinElevationDuration"] != nil ? [[dic objectForKey: @"MinElevationDuration"] intValue] : _minElevationDuration;
		_maxElavationDuration = [dic objectForKey: @"MaxElavationDuration"] != nil ? [[dic objectForKey: @"MaxElavationDuration"] intValue] : _maxElavationDuration;
		_elevationDuration = [dic objectForKey: @"ElevationDuration"] != nil ? [[dic objectForKey: @"ElevationDuration"] intValue] : _elevationDuration;
		_roleId = [dic objectForKey: @"RoleId"] != nil ? [[dic objectForKey: @"RoleId"] copy] : _roleId;
		_notificationToUserOnElevation = [dic objectForKey: @"NotificationToUserOnElevation"] != nil ? [[dic objectForKey: @"NotificationToUserOnElevation"] boolValue] : _notificationToUserOnElevation;
		_ticketingInfoOnElevation = [dic objectForKey: @"TicketingInfoOnElevation"] != nil ? [[dic objectForKey: @"TicketingInfoOnElevation"] boolValue] : _ticketingInfoOnElevation;
		_mfaOnElevation = [dic objectForKey: @"MfaOnElevation"] != nil ? [[dic objectForKey: @"MfaOnElevation"] boolValue] : _mfaOnElevation;
		_lastGlobalAdmin = [dic objectForKey: @"LastGlobalAdmin"] != nil ? [[dic objectForKey: @"LastGlobalAdmin"] boolValue] : _lastGlobalAdmin;

    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys: 
    		 [NSNumber numberWithInt: _minElevationDuration], @"MinElevationDuration",
		 [NSNumber numberWithInt: _maxElavationDuration], @"MaxElavationDuration",
		 [NSNumber numberWithInt: _elevationDuration], @"ElevationDuration",
		 [_roleId copy], @"RoleId",
		 (_notificationToUserOnElevation?@"true":@"false"), @"NotificationToUserOnElevation",
		 (_ticketingInfoOnElevation?@"true":@"false"), @"TicketingInfoOnElevation",
		 (_mfaOnElevation?@"true":@"false"), @"MfaOnElevation",
		 (_lastGlobalAdmin?@"true":@"false"), @"LastGlobalAdmin",
            nil];
}


/** Setter implementation for property minElevationDuration
 *
 */
- (void) setMinElevationDuration: (NSTimeInterval) value {
    _minElevationDuration = value;
    [self valueChangedFor:@"MinElevationDuration"];
}
       
/** Setter implementation for property maxElavationDuration
 *
 */
- (void) setMaxElavationDuration: (NSTimeInterval) value {
    _maxElavationDuration = value;
    [self valueChangedFor:@"MaxElavationDuration"];
}
       
/** Setter implementation for property elevationDuration
 *
 */
- (void) setElevationDuration: (NSTimeInterval) value {
    _elevationDuration = value;
    [self valueChangedFor:@"ElevationDuration"];
}
       
/** Setter implementation for property roleId
 *
 */
- (void) setRoleId: (NSString *) value {
    _roleId = value;
    [self valueChangedFor:@"RoleId"];
}
       
/** Setter implementation for property notificationToUserOnElevation
 *
 */
- (void) setNotificationToUserOnElevation: (bool) value {
    _notificationToUserOnElevation = value;
    [self valueChangedFor:@"NotificationToUserOnElevation"];
}
       
/** Setter implementation for property ticketingInfoOnElevation
 *
 */
- (void) setTicketingInfoOnElevation: (bool) value {
    _ticketingInfoOnElevation = value;
    [self valueChangedFor:@"TicketingInfoOnElevation"];
}
       
/** Setter implementation for property mfaOnElevation
 *
 */
- (void) setMfaOnElevation: (bool) value {
    _mfaOnElevation = value;
    [self valueChangedFor:@"MfaOnElevation"];
}
       
/** Setter implementation for property lastGlobalAdmin
 *
 */
- (void) setLastGlobalAdmin: (bool) value {
    _lastGlobalAdmin = value;
    [self valueChangedFor:@"LastGlobalAdmin"];
}
       

@end
