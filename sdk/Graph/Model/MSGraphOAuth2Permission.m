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


/** Implementation for MSGraphOAuth2Permission
 *
 */
@implementation MSGraphOAuth2Permission


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"adminConsentDescription", @"adminConsentDescription", @"adminConsentDisplayName", @"adminConsentDisplayName", @"id", @"_id", @"isEnabled", @"isEnabled", @"type", @"type", @"userConsentDescription", @"userConsentDescription", @"userConsentDisplayName", @"userConsentDisplayName", @"value", @"value", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.OAuth2Permission";

        
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_adminConsentDescription = [dic objectForKey: @"adminConsentDescription"] != nil ? [[dic objectForKey: @"adminConsentDescription"] copy] : _adminConsentDescription;
		_adminConsentDisplayName = [dic objectForKey: @"adminConsentDisplayName"] != nil ? [[dic objectForKey: @"adminConsentDisplayName"] copy] : _adminConsentDisplayName;
		__id = [dic objectForKey: @"id"] != nil ? [[dic objectForKey: @"id"] copy] : __id;
		_isEnabled = [dic objectForKey: @"isEnabled"] != nil ? [[dic objectForKey: @"isEnabled"] boolValue] : _isEnabled;
		_type = [dic objectForKey: @"type"] != nil ? [[dic objectForKey: @"type"] copy] : _type;
		_userConsentDescription = [dic objectForKey: @"userConsentDescription"] != nil ? [[dic objectForKey: @"userConsentDescription"] copy] : _userConsentDescription;
		_userConsentDisplayName = [dic objectForKey: @"userConsentDisplayName"] != nil ? [[dic objectForKey: @"userConsentDisplayName"] copy] : _userConsentDisplayName;
		_value = [dic objectForKey: @"value"] != nil ? [[dic objectForKey: @"value"] copy] : _value;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.adminConsentDescription copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"adminConsentDescription"];}
	{id curVal = [self.adminConsentDisplayName copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"adminConsentDisplayName"];}
	{id curVal = [self._id copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
	{id curVal = (self.isEnabled?@"true":@"false"); if (curVal!=nil) [dic setValue: curVal forKey: @"isEnabled"];}
	{id curVal = [self.type copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"type"];}
	{id curVal = [self.userConsentDescription copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"userConsentDescription"];}
	{id curVal = [self.userConsentDisplayName copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"userConsentDisplayName"];}
	{id curVal = [self.value copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"value"];}
    [dic setValue: @"#Microsoft.Graph.OAuth2Permission" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.adminConsentDescription;
    if([self.updatedValues containsObject:@"adminConsentDescription"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"adminConsentDescription"];
    }
    }
	{id curVal = self.adminConsentDisplayName;
    if([self.updatedValues containsObject:@"adminConsentDisplayName"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"adminConsentDisplayName"];
    }
    }
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
    }
    }
	{id curVal = self.isEnabled;
    if([self.updatedValues containsObject:@"isEnabled"])
    {
        [dic setValue: curVal==nil?[NSNull null]:(curVal?@"true":@"false") forKey: @"isEnabled"];
    }
    }
	{id curVal = self.type;
    if([self.updatedValues containsObject:@"type"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"type"];
    }
    }
	{id curVal = self.userConsentDescription;
    if([self.updatedValues containsObject:@"userConsentDescription"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"userConsentDescription"];
    }
    }
	{id curVal = self.userConsentDisplayName;
    if([self.updatedValues containsObject:@"userConsentDisplayName"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"userConsentDisplayName"];
    }
    }
	{id curVal = self.value;
    if([self.updatedValues containsObject:@"value"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"value"];
    }
    }
    return dic;
}


/** Setter implementation for property adminConsentDescription
 *
 */
- (void) setAdminConsentDescription: (NSString *) value {
    _adminConsentDescription = value;
    [self valueChangedFor:@"adminConsentDescription"];
}
       
/** Setter implementation for property adminConsentDisplayName
 *
 */
- (void) setAdminConsentDisplayName: (NSString *) value {
    _adminConsentDisplayName = value;
    [self valueChangedFor:@"adminConsentDisplayName"];
}
       
/** Setter implementation for property _id
 *
 */
- (void) setId: (NSString *) value {
    __id = value;
    [self valueChangedFor:@"id"];
}
       
/** Setter implementation for property isEnabled
 *
 */
- (void) setIsEnabled: (bool) value {
    _isEnabled = value;
    [self valueChangedFor:@"isEnabled"];
}
       
/** Setter implementation for property type
 *
 */
- (void) setType: (NSString *) value {
    _type = value;
    [self valueChangedFor:@"type"];
}
       
/** Setter implementation for property userConsentDescription
 *
 */
- (void) setUserConsentDescription: (NSString *) value {
    _userConsentDescription = value;
    [self valueChangedFor:@"userConsentDescription"];
}
       
/** Setter implementation for property userConsentDisplayName
 *
 */
- (void) setUserConsentDisplayName: (NSString *) value {
    _userConsentDisplayName = value;
    [self valueChangedFor:@"userConsentDisplayName"];
}
       
/** Setter implementation for property value
 *
 */
- (void) setValue: (NSString *) value {
    _value = value;
    [self valueChangedFor:@"value"];
}
       

@end
