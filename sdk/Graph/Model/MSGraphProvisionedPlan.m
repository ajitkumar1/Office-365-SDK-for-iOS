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


/** Implementation for MSGraphProvisionedPlan
 *
 */
@implementation MSGraphProvisionedPlan


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"capabilityStatus", @"capabilityStatus", @"provisioningStatus", @"provisioningStatus", @"service", @"service", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.ProvisionedPlan";

        
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_capabilityStatus = [dic objectForKey: @"capabilityStatus"] != nil ? [[dic objectForKey: @"capabilityStatus"] copy] : _capabilityStatus;
		_provisioningStatus = [dic objectForKey: @"provisioningStatus"] != nil ? [[dic objectForKey: @"provisioningStatus"] copy] : _provisioningStatus;
		_service = [dic objectForKey: @"service"] != nil ? [[dic objectForKey: @"service"] copy] : _service;

    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys: 
    		 [_capabilityStatus copy], @"capabilityStatus",
		 [_provisioningStatus copy], @"provisioningStatus",
		 [_service copy], @"service",
            nil];
}


/** Setter implementation for property capabilityStatus
 *
 */
- (void) setCapabilityStatus: (NSString *) value {
    _capabilityStatus = value;
    [self valueChangedFor:@"capabilityStatus"];
}
       
/** Setter implementation for property provisioningStatus
 *
 */
- (void) setProvisioningStatus: (NSString *) value {
    _provisioningStatus = value;
    [self valueChangedFor:@"provisioningStatus"];
}
       
/** Setter implementation for property service
 *
 */
- (void) setService: (NSString *) value {
    _service = value;
    [self valueChangedFor:@"service"];
}
       

@end
