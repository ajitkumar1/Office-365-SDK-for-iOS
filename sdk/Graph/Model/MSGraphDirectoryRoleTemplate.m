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



/** Implementation for MSGraphDirectoryRoleTemplate
 *
 */
@implementation MSGraphDirectoryRoleTemplate


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"description", @"_description", @"displayName", @"displayName", @"objectType", @"objectType", @"objectId", @"objectId", @"deletionTimestamp", @"deletionTimestamp", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.DirectoryRoleTemplate";
        
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		__description = [dic objectForKey: @"description"] != nil ? [[dic objectForKey: @"description"] copy] : __description;
		_displayName = [dic objectForKey: @"displayName"] != nil ? [[dic objectForKey: @"displayName"] copy] : _displayName;

    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys: 
    		 [__description copy], @"description",
		 [_displayName copy], @"displayName",
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
       

@end
