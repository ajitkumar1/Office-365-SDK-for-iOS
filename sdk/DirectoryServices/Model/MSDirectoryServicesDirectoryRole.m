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



#import "MSDirectoryServicesModels.h"



/** Implementation for MSDirectoryServicesDirectoryRole
 *
 */
@implementation MSDirectoryServicesDirectoryRole


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"description", @"_description", @"displayName", @"displayName", @"isSystem", @"isSystem", @"roleDisabled", @"roleDisabled", @"roleTemplateId", @"roleTemplateId", @"objectType", @"objectType", @"objectId", @"objectId", @"deletionTimestamp", @"deletionTimestamp", @"createdOnBehalfOf", @"createdOnBehalfOf", @"createdObjects", @"createdObjects", @"manager", @"manager", @"directReports", @"directReports", @"members", @"members", @"memberOf", @"memberOf", @"owners", @"owners", @"ownedObjects", @"ownedObjects", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.DirectoryServices.DirectoryRole";
        
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		__description = [dic objectForKey: @"description"] != nil ? [[dic objectForKey: @"description"] copy] : __description;
		_displayName = [dic objectForKey: @"displayName"] != nil ? [[dic objectForKey: @"displayName"] copy] : _displayName;
		_isSystem = [dic objectForKey: @"isSystem"] != nil ? [[dic objectForKey: @"isSystem"] boolValue] : _isSystem;
		_roleDisabled = [dic objectForKey: @"roleDisabled"] != nil ? [[dic objectForKey: @"roleDisabled"] boolValue] : _roleDisabled;
		_roleTemplateId = [dic objectForKey: @"roleTemplateId"] != nil ? [[dic objectForKey: @"roleTemplateId"] copy] : _roleTemplateId;

    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys: 
    		 [__description copy], @"description",
		 [_displayName copy], @"displayName",
		 (_isSystem?@"true":@"false"), @"isSystem",
		 (_roleDisabled?@"true":@"false"), @"roleDisabled",
		 [_roleTemplateId copy], @"roleTemplateId",
            nil];
}


/** Setter implementation for property _description
 *
 */
- (void) setDescription: (NSString *) value {
    __description = value;
    [self valueChangedFor:@"description"];
}
       
/** Setter implementation for property displayName
 *
 */
- (void) setDisplayName: (NSString *) value {
    _displayName = value;
    [self valueChangedFor:@"displayName"];
}
       
/** Setter implementation for property isSystem
 *
 */
- (void) setIsSystem: (bool) value {
    _isSystem = value;
    [self valueChangedFor:@"isSystem"];
}
       
/** Setter implementation for property roleDisabled
 *
 */
- (void) setRoleDisabled: (bool) value {
    _roleDisabled = value;
    [self valueChangedFor:@"roleDisabled"];
}
       
/** Setter implementation for property roleTemplateId
 *
 */
- (void) setRoleTemplateId: (NSString *) value {
    _roleTemplateId = value;
    [self valueChangedFor:@"roleTemplateId"];
}
       

@end
