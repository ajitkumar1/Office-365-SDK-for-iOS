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


/** Implementation for MSGraphPasswordCredential
 *
 */
@implementation MSGraphPasswordCredential


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"customKeyIdentifier", @"customKeyIdentifier", @"endDate", @"endDate", @"keyId", @"keyId", @"startDate", @"startDate", @"value", @"value", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.PasswordCredential";

        
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_customKeyIdentifier = [dic objectForKey: @"customKeyIdentifier"] != nil ? [MSOrcObjectizer dataFromString:[dic objectForKey: @"customKeyIdentifier"]] : _customKeyIdentifier;
		_endDate = [dic objectForKey: @"endDate"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"endDate"]] : _endDate;
		_keyId = [dic objectForKey: @"keyId"] != nil ? [[dic objectForKey: @"keyId"] copy] : _keyId;
		_startDate = [dic objectForKey: @"startDate"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"startDate"]] : _startDate;
		_value = [dic objectForKey: @"value"] != nil ? [[dic objectForKey: @"value"] copy] : _value;

    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys: 
    		 [MSOrcObjectizer stringFromData:_customKeyIdentifier], @"customKeyIdentifier",
		 [MSOrcObjectizer stringFromDate:_endDate], @"endDate",
		 [_keyId copy], @"keyId",
		 [MSOrcObjectizer stringFromDate:_startDate], @"startDate",
		 [_value copy], @"value",
            nil];
}


/** Setter implementation for property customKeyIdentifier
 *
 */
- (void) setCustomKeyIdentifier: (NSData *) value {
    _customKeyIdentifier = value;
    [self valueChangedFor:@"customKeyIdentifier"];
}
       
/** Setter implementation for property endDate
 *
 */
- (void) setEndDate: (NSDate *) value {
    _endDate = value;
    [self valueChangedFor:@"endDate"];
}
       
/** Setter implementation for property keyId
 *
 */
- (void) setKeyId: (NSString *) value {
    _keyId = value;
    [self valueChangedFor:@"keyId"];
}
       
/** Setter implementation for property startDate
 *
 */
- (void) setStartDate: (NSDate *) value {
    _startDate = value;
    [self valueChangedFor:@"startDate"];
}
       
/** Setter implementation for property value
 *
 */
- (void) setValue: (NSString *) value {
    _value = value;
    [self valueChangedFor:@"value"];
}
       

@end
