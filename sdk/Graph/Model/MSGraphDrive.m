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



/** Implementation for MSGraphDrive
 *
 */
@implementation MSGraphDrive


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"id", @"_id", @"driveType", @"driveType", @"owner", @"owner", @"quota", @"quota", @"items", @"items", @"shared", @"shared", @"special", @"special", @"root", @"root", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.drive";
        
        
		_items = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_shared = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_special = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		__id = [dic objectForKey: @"id"] != nil ? [[dic objectForKey: @"id"] copy] : __id;
		_driveType = [dic objectForKey: @"driveType"] != nil ? [[dic objectForKey: @"driveType"] copy] : _driveType;
		_owner = [dic objectForKey: @"owner"] != nil ? [[MSGraphIdentitySet alloc] initWithDictionary: [dic objectForKey: @"owner"]] : _owner;
		_quota = [dic objectForKey: @"quota"] != nil ? [[MSGraphQuota alloc] initWithDictionary: [dic objectForKey: @"quota"]] : _quota;

        if([dic objectForKey: @"items"] != [NSNull null]){
            _items = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"items"] count]];
            
            for (id object in [dic objectForKey: @"items"]) {
                [_items addObject:[[MSGraphItem alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"shared"] != [NSNull null]){
            _shared = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"shared"] count]];
            
            for (id object in [dic objectForKey: @"shared"]) {
                [_shared addObject:[[MSGraphItem alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"special"] != [NSNull null]){
            _special = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"special"] count]];
            
            for (id object in [dic objectForKey: @"special"]) {
                [_special addObject:[[MSGraphItem alloc] initWithDictionary: object]];
            }
        }
        
		_root = [dic objectForKey: @"root"] != nil ? [[MSGraphItem alloc] initWithDictionary: [dic objectForKey: @"root"]] : _root;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self._id copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
	{id curVal = [self.driveType copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"driveType"];}
	{id curVal = [self.owner toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"owner"];}
	{id curVal = [self.quota toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"quota"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"items"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"shared"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"special"];}
	{id curVal = [self.root toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"root"];}
    [dic setValue: @"#Microsoft.Graph.drive" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
    }
    }
	{id curVal = self.driveType;
    if([self.updatedValues containsObject:@"driveType"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"driveType"];
    }
    }
	{id curVal = self.owner;
    if([self.updatedValues containsObject:@"owner"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"owner"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"owner"];
            }
        
            }}
	{id curVal = self.quota;
    if([self.updatedValues containsObject:@"quota"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"quota"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"quota"];
            }
        
            }}
	{id curVal = self.items;
    if([self.updatedValues containsObject:@"items"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"items"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.shared;
    if([self.updatedValues containsObject:@"shared"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"shared"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.special;
    if([self.updatedValues containsObject:@"special"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"special"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.root;
    if([self.updatedValues containsObject:@"root"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"root"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"root"];
            }
        
            }}
    return dic;
}


/** Setter implementation for property _id
 *
 */
- (void) setId: (NSString *) value {
    __id = value;
    [self valueChangedFor:@"id"];
}
       
/** Setter implementation for property driveType
 *
 */
- (void) setDriveType: (NSString *) value {
    _driveType = value;
    [self valueChangedFor:@"driveType"];
}
       
/** Setter implementation for property owner
 *
 */
- (void) setOwner: (MSGraphIdentitySet *) value {
    _owner = value;
    [self valueChangedFor:@"owner"];
}
       
/** Setter implementation for property quota
 *
 */
- (void) setQuota: (MSGraphQuota *) value {
    _quota = value;
    [self valueChangedFor:@"quota"];
}
       
/** Setter implementation for property items
 *
 */
- (void) setItems: (NSMutableArray *) value {
    _items = value;
    [self valueChangedFor:@"items"];
}
       
/** Setter implementation for property shared
 *
 */
- (void) setShared: (NSMutableArray *) value {
    _shared = value;
    [self valueChangedFor:@"shared"];
}
       
/** Setter implementation for property special
 *
 */
- (void) setSpecial: (NSMutableArray *) value {
    _special = value;
    [self valueChangedFor:@"special"];
}
       
/** Setter implementation for property root
 *
 */
- (void) setRoot: (MSGraphItem *) value {
    _root = value;
    [self valueChangedFor:@"root"];
}
       

@end
