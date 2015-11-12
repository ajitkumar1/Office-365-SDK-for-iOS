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


/** Implementation for MSGraphKeyCredential
 *
 */
@implementation MSGraphKeyCredential


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"customKeyIdentifier", @"customKeyIdentifier", @"endDate", @"endDate", @"keyId", @"keyId", @"startDate", @"startDate", @"type", @"type", @"usage", @"usage", @"value", @"value", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.KeyCredential";

        
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_customKeyIdentifier = [dic objectForKey: @"customKeyIdentifier"] != nil ? [MSOrcObjectizer dataFromString:[dic objectForKey: @"customKeyIdentifier"]] : _customKeyIdentifier;
		_endDate = [dic objectForKey: @"endDate"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"endDate"]] : _endDate;
		_keyId = [dic objectForKey: @"keyId"] != nil ? [[dic objectForKey: @"keyId"] copy] : _keyId;
		_startDate = [dic objectForKey: @"startDate"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"startDate"]] : _startDate;
		_type = [dic objectForKey: @"type"] != nil ? [[dic objectForKey: @"type"] copy] : _type;
		_usage = [dic objectForKey: @"usage"] != nil ? [[dic objectForKey: @"usage"] copy] : _usage;
		_value = [dic objectForKey: @"value"] != nil ? [MSOrcObjectizer dataFromString:[dic objectForKey: @"value"]] : _value;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [MSOrcObjectizer stringFromData:self.customKeyIdentifier]; if (curVal!=nil) [dic setValue: curVal forKey: @"customKeyIdentifier"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.endDate]; if (curVal!=nil) [dic setValue: curVal forKey: @"endDate"];}
	{id curVal = [self.keyId copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"keyId"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.startDate]; if (curVal!=nil) [dic setValue: curVal forKey: @"startDate"];}
	{id curVal = [self.type copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"type"];}
	{id curVal = [self.usage copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"usage"];}
	{id curVal = [MSOrcObjectizer stringFromData:self.value]; if (curVal!=nil) [dic setValue: curVal forKey: @"value"];}
    [dic setValue: @"#Microsoft.Graph.KeyCredential" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.customKeyIdentifier;
    if([self.updatedValues containsObject:@"customKeyIdentifier"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromData:curVal] forKey: @"customKeyIdentifier"];
    }
    }
	{id curVal = self.endDate;
    if([self.updatedValues containsObject:@"endDate"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"endDate"];
    }
    }
	{id curVal = self.keyId;
    if([self.updatedValues containsObject:@"keyId"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"keyId"];
    }
    }
	{id curVal = self.startDate;
    if([self.updatedValues containsObject:@"startDate"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"startDate"];
    }
    }
	{id curVal = self.type;
    if([self.updatedValues containsObject:@"type"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"type"];
    }
    }
	{id curVal = self.usage;
    if([self.updatedValues containsObject:@"usage"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"usage"];
    }
    }
	{id curVal = self.value;
    if([self.updatedValues containsObject:@"value"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromData:curVal] forKey: @"value"];
    }
    }
    return dic;
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
       
/** Setter implementation for property type
 *
 */
- (void) setType: (NSString *) value {
    _type = value;
    [self valueChangedFor:@"type"];
}
       
/** Setter implementation for property usage
 *
 */
- (void) setUsage: (NSString *) value {
    _usage = value;
    [self valueChangedFor:@"usage"];
}
       
/** Setter implementation for property value
 *
 */
- (void) setValue: (NSData *) value {
    _value = value;
    [self valueChangedFor:@"value"];
}
       

@end