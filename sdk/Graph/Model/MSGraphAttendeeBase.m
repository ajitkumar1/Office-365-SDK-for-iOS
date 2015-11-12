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


/** Implementation for MSGraphAttendeeBase
 *
 */
@implementation MSGraphAttendeeBase


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"Type", @"type", @"EmailAddress", @"emailAddress", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.AttendeeBase";

        
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_type = [dic objectForKey: @"Type"] != nil ? [MSGraphAttendeeTypeSerializer fromString:[dic objectForKey: @"Type"]] : _type;
		_emailAddress = [dic objectForKey: @"EmailAddress"] != nil ? [[MSGraphEmailAddress alloc] initWithDictionary: [dic objectForKey: @"EmailAddress"]] : _emailAddress;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [MSGraphAttendeeTypeSerializer toString:self.type]; if (curVal!=nil) [dic setValue: curVal forKey: @"Type"];}
	{id curVal = [self.emailAddress toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"EmailAddress"];}
    [dic setValue: @"#Microsoft.Graph.AttendeeBase" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.type;
    if([self.updatedValues containsObject:@"Type"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSGraphAttendeeTypeSerializer toString:curVal] forKey: @"Type"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Type"];
            }
        
            }}
	{id curVal = self.emailAddress;
    if([self.updatedValues containsObject:@"EmailAddress"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"EmailAddress"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"EmailAddress"];
            }
        
            }}
    return dic;
}


/** Setter implementation for property type
 *
 */
- (void) setType: (MSGraphAttendeeType) value {
    _type = value;
    [self valueChangedFor:@"Type"];
}
       

- (void)setTypeString:(NSString *)string {
        
    _type = [MSGraphAttendeeTypeSerializer fromString:string];
    [self valueChangedFor:@"Type"]; 
}

/** Setter implementation for property emailAddress
 *
 */
- (void) setEmailAddress: (MSGraphEmailAddress *) value {
    _emailAddress = value;
    [self valueChangedFor:@"EmailAddress"];
}
       

@end
