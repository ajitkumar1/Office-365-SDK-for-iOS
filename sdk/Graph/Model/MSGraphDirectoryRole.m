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



/** Implementation for MSGraphDirectoryRole
 *
 */
@implementation MSGraphDirectoryRole


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"description", @"_description", @"displayName", @"displayName", @"isSystem", @"isSystem", @"roleDisabled", @"roleDisabled", @"roleTemplateId", @"roleTemplateId", @"members", @"members", @"memberOf", @"memberOf", @"owners", @"owners", @"ownedObjects", @"ownedObjects", @"objectType", @"objectType", @"objectId", @"objectId", @"deletionTimestamp", @"deletionTimestamp", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.DirectoryRole";
        
        
		_members = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_memberOf = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_owners = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_ownedObjects = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		__description = [dic objectForKey: @"description"] != nil ? [[dic objectForKey: @"description"] copy] : __description;
		_displayName = [dic objectForKey: @"displayName"] != nil ? [[dic objectForKey: @"displayName"] copy] : _displayName;
		_isSystem = [dic objectForKey: @"isSystem"] != nil ? [[dic objectForKey: @"isSystem"] boolValue] : _isSystem;
		_roleDisabled = [dic objectForKey: @"roleDisabled"] != nil ? [[dic objectForKey: @"roleDisabled"] boolValue] : _roleDisabled;
		_roleTemplateId = [dic objectForKey: @"roleTemplateId"] != nil ? [[dic objectForKey: @"roleTemplateId"] copy] : _roleTemplateId;

        if([dic objectForKey: @"members"] != [NSNull null]){
            _members = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"members"] count]];
            
            for (id object in [dic objectForKey: @"members"]) {
                [_members addObject:[[MSGraphDirectoryObject alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"memberOf"] != [NSNull null]){
            _memberOf = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"memberOf"] count]];
            
            for (id object in [dic objectForKey: @"memberOf"]) {
                [_memberOf addObject:[[MSGraphDirectoryObject alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"owners"] != [NSNull null]){
            _owners = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"owners"] count]];
            
            for (id object in [dic objectForKey: @"owners"]) {
                [_owners addObject:[[MSGraphDirectoryObject alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"ownedObjects"] != [NSNull null]){
            _ownedObjects = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"ownedObjects"] count]];
            
            for (id object in [dic objectForKey: @"ownedObjects"]) {
                [_ownedObjects addObject:[[MSGraphDirectoryObject alloc] initWithDictionary: object]];
            }
        }
        
		self.objectType = [dic objectForKey: @"objectType"] != nil ? [[dic objectForKey: @"objectType"] copy] : self.objectType;
		self.objectId = [dic objectForKey: @"objectId"] != nil ? [[dic objectForKey: @"objectId"] copy] : self.objectId;
		self.deletionTimestamp = [dic objectForKey: @"deletionTimestamp"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"deletionTimestamp"]] : self.deletionTimestamp;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self._description copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"description"];}
	{id curVal = [self.displayName copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"displayName"];}
	{id curVal = (self.isSystem?@"true":@"false"); if (curVal!=nil) [dic setValue: curVal forKey: @"isSystem"];}
	{id curVal = (self.roleDisabled?@"true":@"false"); if (curVal!=nil) [dic setValue: curVal forKey: @"roleDisabled"];}
	{id curVal = [self.roleTemplateId copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"roleTemplateId"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"members"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"memberOf"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"owners"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"ownedObjects"];}
	{id curVal = [self.objectType copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"objectType"];}
	{id curVal = [self.objectId copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"objectId"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.deletionTimestamp]; if (curVal!=nil) [dic setValue: curVal forKey: @"deletionTimestamp"];}
    [dic setValue: @"#Microsoft.Graph.DirectoryRole" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self._description;
    if([self.updatedValues containsObject:@"description"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"description"];
    }
    }
	{id curVal = self.displayName;
    if([self.updatedValues containsObject:@"displayName"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"displayName"];
    }
    }
	{id curVal = self.isSystem;
    if([self.updatedValues containsObject:@"isSystem"])
    {
        [dic setValue: curVal==nil?[NSNull null]:(curVal?@"true":@"false") forKey: @"isSystem"];
    }
    }
	{id curVal = self.roleDisabled;
    if([self.updatedValues containsObject:@"roleDisabled"])
    {
        [dic setValue: curVal==nil?[NSNull null]:(curVal?@"true":@"false") forKey: @"roleDisabled"];
    }
    }
	{id curVal = self.roleTemplateId;
    if([self.updatedValues containsObject:@"roleTemplateId"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"roleTemplateId"];
    }
    }
	{id curVal = self.members;
    if([self.updatedValues containsObject:@"members"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"members"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.memberOf;
    if([self.updatedValues containsObject:@"memberOf"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"memberOf"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.owners;
    if([self.updatedValues containsObject:@"owners"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"owners"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.ownedObjects;
    if([self.updatedValues containsObject:@"ownedObjects"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"ownedObjects"];
    }
        else
    {
                
        //Check collection change:
        
            }}
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
       
/** Setter implementation for property isSystem
 *
 */
- (void) setIsSystem: (bool) value {
    _isSystem = value;
    [self valueChangedFor:@"isSystem"];
}
       
/** Setter implementation for property roleDisabled
 *
 */
- (void) setRoleDisabled: (bool) value {
    _roleDisabled = value;
    [self valueChangedFor:@"roleDisabled"];
}
       
/** Setter implementation for property roleTemplateId
 *
 */
- (void) setRoleTemplateId: (NSString *) value {
    _roleTemplateId = value;
    [self valueChangedFor:@"roleTemplateId"];
}
       
/** Setter implementation for property members
 *
 */
- (void) setMembers: (NSMutableArray *) value {
    _members = value;
    [self valueChangedFor:@"members"];
}
       
/** Setter implementation for property memberOf
 *
 */
- (void) setMemberOf: (NSMutableArray *) value {
    _memberOf = value;
    [self valueChangedFor:@"memberOf"];
}
       
/** Setter implementation for property owners
 *
 */
- (void) setOwners: (NSMutableArray *) value {
    _owners = value;
    [self valueChangedFor:@"owners"];
}
       
/** Setter implementation for property ownedObjects
 *
 */
- (void) setOwnedObjects: (NSMutableArray *) value {
    _ownedObjects = value;
    [self valueChangedFor:@"ownedObjects"];
}
       

@end
