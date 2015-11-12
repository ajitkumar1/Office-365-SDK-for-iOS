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



/** Implementation for MSDirectoryServicesOAuth2PermissionGrant
 *
 */
@implementation MSDirectoryServicesOAuth2PermissionGrant


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"clientId", @"clientId", @"consentType", @"consentType", @"expiryTime", @"expiryTime", @"objectId", @"objectId", @"principalId", @"principalId", @"resourceId", @"resourceId", @"scope", @"scope", @"startTime", @"startTime", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.DirectoryServices.OAuth2PermissionGrant";
        
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_clientId = [dic objectForKey: @"clientId"] != nil ? [[dic objectForKey: @"clientId"] copy] : _clientId;
		_consentType = [dic objectForKey: @"consentType"] != nil ? [[dic objectForKey: @"consentType"] copy] : _consentType;
		_expiryTime = [dic objectForKey: @"expiryTime"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"expiryTime"]] : _expiryTime;
		_objectId = [dic objectForKey: @"objectId"] != nil ? [[dic objectForKey: @"objectId"] copy] : _objectId;
		_principalId = [dic objectForKey: @"principalId"] != nil ? [[dic objectForKey: @"principalId"] copy] : _principalId;
		_resourceId = [dic objectForKey: @"resourceId"] != nil ? [[dic objectForKey: @"resourceId"] copy] : _resourceId;
		_scope = [dic objectForKey: @"scope"] != nil ? [[dic objectForKey: @"scope"] copy] : _scope;
		_startTime = [dic objectForKey: @"startTime"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"startTime"]] : _startTime;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.clientId copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"clientId"];}
	{id curVal = [self.consentType copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"consentType"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.expiryTime]; if (curVal!=nil) [dic setValue: curVal forKey: @"expiryTime"];}
	{id curVal = [self.objectId copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"objectId"];}
	{id curVal = [self.principalId copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"principalId"];}
	{id curVal = [self.resourceId copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"resourceId"];}
	{id curVal = [self.scope copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"scope"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.startTime]; if (curVal!=nil) [dic setValue: curVal forKey: @"startTime"];}
    [dic setValue: @"#Microsoft.DirectoryServices.OAuth2PermissionGrant" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.clientId;
    if([self.updatedValues containsObject:@"clientId"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"clientId"];
    }
    }
	{id curVal = self.consentType;
    if([self.updatedValues containsObject:@"consentType"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"consentType"];
    }
    }
	{id curVal = self.expiryTime;
    if([self.updatedValues containsObject:@"expiryTime"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"expiryTime"];
    }
    }
	{id curVal = self.objectId;
    if([self.updatedValues containsObject:@"objectId"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"objectId"];
    }
    }
	{id curVal = self.principalId;
    if([self.updatedValues containsObject:@"principalId"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"principalId"];
    }
    }
	{id curVal = self.resourceId;
    if([self.updatedValues containsObject:@"resourceId"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"resourceId"];
    }
    }
	{id curVal = self.scope;
    if([self.updatedValues containsObject:@"scope"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"scope"];
    }
    }
	{id curVal = self.startTime;
    if([self.updatedValues containsObject:@"startTime"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"startTime"];
    }
    }
    return dic;
}


/** Setter implementation for property clientId
 *
 */
- (void) setClientId: (NSString *) value {
    _clientId = value;
    [self valueChangedFor:@"clientId"];
}
       
/** Setter implementation for property consentType
 *
 */
- (void) setConsentType: (NSString *) value {
    _consentType = value;
    [self valueChangedFor:@"consentType"];
}
       
/** Setter implementation for property expiryTime
 *
 */
- (void) setExpiryTime: (NSDate *) value {
    _expiryTime = value;
    [self valueChangedFor:@"expiryTime"];
}
       
/** Setter implementation for property objectId
 *
 */
- (void) setObjectId: (NSString *) value {
    _objectId = value;
    [self valueChangedFor:@"objectId"];
}
       
/** Setter implementation for property principalId
 *
 */
- (void) setPrincipalId: (NSString *) value {
    _principalId = value;
    [self valueChangedFor:@"principalId"];
}
       
/** Setter implementation for property resourceId
 *
 */
- (void) setResourceId: (NSString *) value {
    _resourceId = value;
    [self valueChangedFor:@"resourceId"];
}
       
/** Setter implementation for property scope
 *
 */
- (void) setScope: (NSString *) value {
    _scope = value;
    [self valueChangedFor:@"scope"];
}
       
/** Setter implementation for property startTime
 *
 */
- (void) setStartTime: (NSDate *) value {
    _startTime = value;
    [self valueChangedFor:@"startTime"];
}
       

@end
