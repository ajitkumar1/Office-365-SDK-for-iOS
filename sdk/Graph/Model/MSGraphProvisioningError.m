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


/** Implementation for MSGraphProvisioningError
 *
 */
@implementation MSGraphProvisioningError


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"errorDetail", @"errorDetail", @"resolved", @"resolved", @"service", @"service", @"timestamp", @"timestamp", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.ProvisioningError";

        
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_errorDetail = [dic objectForKey: @"errorDetail"] != nil ? [[dic objectForKey: @"errorDetail"] copy] : _errorDetail;
		_resolved = [dic objectForKey: @"resolved"] != nil ? [[dic objectForKey: @"resolved"] boolValue] : _resolved;
		_service = [dic objectForKey: @"service"] != nil ? [[dic objectForKey: @"service"] copy] : _service;
		_timestamp = [dic objectForKey: @"timestamp"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"timestamp"]] : _timestamp;

    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys: 
    		 [_errorDetail copy], @"errorDetail",
		 (_resolved?@"true":@"false"), @"resolved",
		 [_service copy], @"service",
		 [MSOrcObjectizer stringFromDate:_timestamp], @"timestamp",
            nil];
}


/** Setter implementation for property errorDetail
 *
 */
- (void) setErrorDetail: (NSString *) value {
    _errorDetail = value;
    [self valueChangedFor:@"errorDetail"];
}
       
/** Setter implementation for property resolved
 *
 */
- (void) setResolved: (bool) value {
    _resolved = value;
    [self valueChangedFor:@"resolved"];
}
       
/** Setter implementation for property service
 *
 */
- (void) setService: (NSString *) value {
    _service = value;
    [self valueChangedFor:@"service"];
}
       
/** Setter implementation for property timestamp
 *
 */
- (void) setTimestamp: (NSDate *) value {
    _timestamp = value;
    [self valueChangedFor:@"timestamp"];
}
       

@end
