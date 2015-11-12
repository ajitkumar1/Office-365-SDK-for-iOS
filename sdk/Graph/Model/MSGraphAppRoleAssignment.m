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



/** Implementation for MSGraphAppRoleAssignment
 *
 */
@implementation MSGraphAppRoleAssignment


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"creationTimestamp", @"creationTimestamp", @"id", @"_id", @"principalDisplayName", @"principalDisplayName", @"principalId", @"principalId", @"principalType", @"principalType", @"resourceDisplayName", @"resourceDisplayName", @"resourceId", @"resourceId", @"objectType", @"objectType", @"objectId", @"objectId", @"deletionTimestamp", @"deletionTimestamp", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.AppRoleAssignment";
        
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_creationTimestamp = [dic objectForKey: @"creationTimestamp"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"creationTimestamp"]] : _creationTimestamp;
		__id = [dic objectForKey: @"id"] != nil ? [[dic objectForKey: @"id"] copy] : __id;
		_principalDisplayName = [dic objectForKey: @"principalDisplayName"] != nil ? [[dic objectForKey: @"principalDisplayName"] copy] : _principalDisplayName;
		_principalId = [dic objectForKey: @"principalId"] != nil ? [[dic objectForKey: @"principalId"] copy] : _principalId;
		_principalType = [dic objectForKey: @"principalType"] != nil ? [[dic objectForKey: @"principalType"] copy] : _principalType;
		_resourceDisplayName = [dic objectForKey: @"resourceDisplayName"] != nil ? [[dic objectForKey: @"resourceDisplayName"] copy] : _resourceDisplayName;
		_resourceId = [dic objectForKey: @"resourceId"] != nil ? [[dic objectForKey: @"resourceId"] copy] : _resourceId;
		self.objectType = [dic objectForKey: @"objectType"] != nil ? [[dic objectForKey: @"objectType"] copy] : self.objectType;
		self.objectId = [dic objectForKey: @"objectId"] != nil ? [[dic objectForKey: @"objectId"] copy] : self.objectId;
		self.deletionTimestamp = [dic objectForKey: @"deletionTimestamp"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"deletionTimestamp"]] : self.deletionTimestamp;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [MSOrcObjectizer stringFromDate:self.creationTimestamp]; if (curVal!=nil) [dic setValue: curVal forKey: @"creationTimestamp"];}
	{id curVal = [self._id copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
	{id curVal = [self.principalDisplayName copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"principalDisplayName"];}
	{id curVal = [self.principalId copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"principalId"];}
	{id curVal = [self.principalType copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"principalType"];}
	{id curVal = [self.resourceDisplayName copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"resourceDisplayName"];}
	{id curVal = [self.resourceId copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"resourceId"];}
	{id curVal = [self.objectType copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"objectType"];}
	{id curVal = [self.objectId copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"objectId"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.deletionTimestamp]; if (curVal!=nil) [dic setValue: curVal forKey: @"deletionTimestamp"];}
    [dic setValue: @"#Microsoft.Graph.AppRoleAssignment" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.creationTimestamp;
    if([self.updatedValues containsObject:@"creationTimestamp"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"creationTimestamp"];
    }
    }
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
    }
    }
	{id curVal = self.principalDisplayName;
    if([self.updatedValues containsObject:@"principalDisplayName"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"principalDisplayName"];
    }
    }
	{id curVal = self.principalId;
    if([self.updatedValues containsObject:@"principalId"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"principalId"];
    }
    }
	{id curVal = self.principalType;
    if([self.updatedValues containsObject:@"principalType"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"principalType"];
    }
    }
	{id curVal = self.resourceDisplayName;
    if([self.updatedValues containsObject:@"resourceDisplayName"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"resourceDisplayName"];
    }
    }
	{id curVal = self.resourceId;
    if([self.updatedValues containsObject:@"resourceId"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"resourceId"];
    }
    }
	{id curVal = self.objectType;
    if([self.updatedValues containsObject:@"objectType"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"objectType"];
    }
    }
	{id curVal = self.objectId;
    if([self.updatedValues containsObject:@"objectId"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"objectId"];
    }
    }
	{id curVal = self.deletionTimestamp;
    if([self.updatedValues containsObject:@"deletionTimestamp"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"deletionTimestamp"];
    }
    }
    return dic;
}


/** Setter implementation for property creationTimestamp
 *
 */
- (void) setCreationTimestamp: (NSDate *) value {
    _creationTimestamp = value;
    [self valueChangedFor:@"creationTimestamp"];
}
       
/** Setter implementation for property _id
 *
 */
- (void) setId: (NSString *) value {
    __id = value;
    [self valueChangedFor:@"id"];
}
       
/** Setter implementation for property principalDisplayName
 *
 */
- (void) setPrincipalDisplayName: (NSString *) value {
    _principalDisplayName = value;
    [self valueChangedFor:@"principalDisplayName"];
}
       
/** Setter implementation for property principalId
 *
 */
- (void) setPrincipalId: (NSString *) value {
    _principalId = value;
    [self valueChangedFor:@"principalId"];
}
       
/** Setter implementation for property principalType
 *
 */
- (void) setPrincipalType: (NSString *) value {
    _principalType = value;
    [self valueChangedFor:@"principalType"];
}
       
/** Setter implementation for property resourceDisplayName
 *
 */
- (void) setResourceDisplayName: (NSString *) value {
    _resourceDisplayName = value;
    [self valueChangedFor:@"resourceDisplayName"];
}
       
/** Setter implementation for property resourceId
 *
 */
- (void) setResourceId: (NSString *) value {
    _resourceId = value;
    [self valueChangedFor:@"resourceId"];
}
       

@end
