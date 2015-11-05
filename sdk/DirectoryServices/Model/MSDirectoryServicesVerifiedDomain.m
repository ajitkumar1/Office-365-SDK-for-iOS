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
#import "core/MSOrcObjectizer.h"


/** Implementation for MSDirectoryServicesVerifiedDomain
 *
 */
@implementation MSDirectoryServicesVerifiedDomain


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"capabilities", @"capabilities", @"default", @"_default", @"id", @"_id", @"initial", @"initial", @"name", @"name", @"type", @"type", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.DirectoryServices.VerifiedDomain";

        
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_capabilities = [dic objectForKey: @"capabilities"] != nil ? [[dic objectForKey: @"capabilities"] copy] : _capabilities;
		__default = [dic objectForKey: @"default"] != nil ? [[dic objectForKey: @"default"] boolValue] : __default;
		__id = [dic objectForKey: @"id"] != nil ? [[dic objectForKey: @"id"] copy] : __id;
		_initial = [dic objectForKey: @"initial"] != nil ? [[dic objectForKey: @"initial"] boolValue] : _initial;
		_name = [dic objectForKey: @"name"] != nil ? [[dic objectForKey: @"name"] copy] : _name;
		_type = [dic objectForKey: @"type"] != nil ? [[dic objectForKey: @"type"] copy] : _type;

    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys: 
    		 [_capabilities copy], @"capabilities",
		 (__default?@"true":@"false"), @"default",
		 [__id copy], @"id",
		 (_initial?@"true":@"false"), @"initial",
		 [_name copy], @"name",
		 [_type copy], @"type",
            nil];
}


/** Setter implementation for property capabilities
 *
 */
- (void) setCapabilities: (NSString *) value {
    _capabilities = value;
    [self valueChangedFor:@"capabilities"];
}
       
/** Setter implementation for property _default
 *
 */
- (void) setDefault: (bool) value {
    __default = value;
    [self valueChangedFor:@"default"];
}
       
/** Setter implementation for property _id
 *
 */
- (void) setId: (NSString *) value {
    __id = value;
    [self valueChangedFor:@"id"];
}
       
/** Setter implementation for property initial
 *
 */
- (void) setInitial: (bool) value {
    _initial = value;
    [self valueChangedFor:@"initial"];
}
       
/** Setter implementation for property name
 *
 */
- (void) setName: (NSString *) value {
    _name = value;
    [self valueChangedFor:@"name"];
}
       
/** Setter implementation for property type
 *
 */
- (void) setType: (NSString *) value {
    _type = value;
    [self valueChangedFor:@"type"];
}
       

@end
