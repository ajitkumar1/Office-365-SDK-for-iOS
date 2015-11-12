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



/** Implementation for MSGraphSection
 *
 */
@implementation MSGraphSection


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"isDefault", @"isDefault", @"pagesUrl", @"pagesUrl", @"name", @"name", @"createdBy", @"createdBy", @"lastModifiedBy", @"lastModifiedBy", @"lastModifiedTime", @"lastModifiedTime", @"id", @"_id", @"self", @"_self", @"createdTime", @"createdTime", @"parentNotebook", @"parentNotebook", @"parentSectionGroup", @"parentSectionGroup", @"pages", @"pages", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.Section";
        
        
		_pages = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_isDefault = [dic objectForKey: @"isDefault"] != nil ? [[dic objectForKey: @"isDefault"] boolValue] : _isDefault;
		_pagesUrl = [dic objectForKey: @"pagesUrl"] != nil ? [[dic objectForKey: @"pagesUrl"] copy] : _pagesUrl;
		_name = [dic objectForKey: @"name"] != nil ? [[dic objectForKey: @"name"] copy] : _name;
		_createdBy = [dic objectForKey: @"createdBy"] != nil ? [[dic objectForKey: @"createdBy"] copy] : _createdBy;
		_lastModifiedBy = [dic objectForKey: @"lastModifiedBy"] != nil ? [[dic objectForKey: @"lastModifiedBy"] copy] : _lastModifiedBy;
		_lastModifiedTime = [dic objectForKey: @"lastModifiedTime"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"lastModifiedTime"]] : _lastModifiedTime;
		__id = [dic objectForKey: @"id"] != nil ? [[dic objectForKey: @"id"] copy] : __id;
		__self = [dic objectForKey: @"self"] != nil ? [[dic objectForKey: @"self"] copy] : __self;
		_createdTime = [dic objectForKey: @"createdTime"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"createdTime"]] : _createdTime;
		_parentNotebook = [dic objectForKey: @"parentNotebook"] != nil ? [[MSGraphNotebook alloc] initWithDictionary: [dic objectForKey: @"parentNotebook"]] : _parentNotebook;
		_parentSectionGroup = [dic objectForKey: @"parentSectionGroup"] != nil ? [[MSGraphSectionGroup alloc] initWithDictionary: [dic objectForKey: @"parentSectionGroup"]] : _parentSectionGroup;

        if([dic objectForKey: @"pages"] != [NSNull null]){
            _pages = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"pages"] count]];
            
            for (id object in [dic objectForKey: @"pages"]) {
                [_pages addObject:[[MSGraphPage alloc] initWithDictionary: object]];
            }
        }
        

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = (self.isDefault?@"true":@"false"); if (curVal!=nil) [dic setValue: curVal forKey: @"isDefault"];}
	{id curVal = [self.pagesUrl copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"pagesUrl"];}
	{id curVal = [self.name copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"name"];}
	{id curVal = [self.createdBy copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"createdBy"];}
	{id curVal = [self.lastModifiedBy copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"lastModifiedBy"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.lastModifiedTime]; if (curVal!=nil) [dic setValue: curVal forKey: @"lastModifiedTime"];}
	{id curVal = [self._id copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
	{id curVal = [self._self copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"self"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.createdTime]; if (curVal!=nil) [dic setValue: curVal forKey: @"createdTime"];}
	{id curVal = [self.parentNotebook toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"parentNotebook"];}
	{id curVal = [self.parentSectionGroup toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"parentSectionGroup"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"pages"];}
    [dic setValue: @"#Microsoft.Graph.Section" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.isDefault;
    if([self.updatedValues containsObject:@"isDefault"])
    {
        [dic setValue: curVal==nil?[NSNull null]:(curVal?@"true":@"false") forKey: @"isDefault"];
    }
    }
	{id curVal = self.pagesUrl;
    if([self.updatedValues containsObject:@"pagesUrl"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"pagesUrl"];
    }
    }
	{id curVal = self.name;
    if([self.updatedValues containsObject:@"name"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"name"];
    }
    }
	{id curVal = self.createdBy;
    if([self.updatedValues containsObject:@"createdBy"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"createdBy"];
    }
    }
	{id curVal = self.lastModifiedBy;
    if([self.updatedValues containsObject:@"lastModifiedBy"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"lastModifiedBy"];
    }
    }
	{id curVal = self.lastModifiedTime;
    if([self.updatedValues containsObject:@"lastModifiedTime"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"lastModifiedTime"];
    }
    }
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
    }
    }
	{id curVal = self._self;
    if([self.updatedValues containsObject:@"self"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"self"];
    }
    }
	{id curVal = self.createdTime;
    if([self.updatedValues containsObject:@"createdTime"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"createdTime"];
    }
    }
	{id curVal = self.parentNotebook;
    if([self.updatedValues containsObject:@"parentNotebook"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"parentNotebook"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"parentNotebook"];
            }
        
            }}
	{id curVal = self.parentSectionGroup;
    if([self.updatedValues containsObject:@"parentSectionGroup"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"parentSectionGroup"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"parentSectionGroup"];
            }
        
            }}
	{id curVal = self.pages;
    if([self.updatedValues containsObject:@"pages"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"pages"];
    }
        else
    {
                
        //Check collection change:
        
            }}
    return dic;
}


/** Setter implementation for property isDefault
 *
 */
- (void) setIsDefault: (bool) value {
    _isDefault = value;
    [self valueChangedFor:@"isDefault"];
}
       
/** Setter implementation for property pagesUrl
 *
 */
- (void) setPagesUrl: (NSString *) value {
    _pagesUrl = value;
    [self valueChangedFor:@"pagesUrl"];
}
       
/** Setter implementation for property name
 *
 */
- (void) setName: (NSString *) value {
    _name = value;
    [self valueChangedFor:@"name"];
}
       
/** Setter implementation for property createdBy
 *
 */
- (void) setCreatedBy: (NSString *) value {
    _createdBy = value;
    [self valueChangedFor:@"createdBy"];
}
       
/** Setter implementation for property lastModifiedBy
 *
 */
- (void) setLastModifiedBy: (NSString *) value {
    _lastModifiedBy = value;
    [self valueChangedFor:@"lastModifiedBy"];
}
       
/** Setter implementation for property lastModifiedTime
 *
 */
- (void) setLastModifiedTime: (NSDate *) value {
    _lastModifiedTime = value;
    [self valueChangedFor:@"lastModifiedTime"];
}
       
/** Setter implementation for property _id
 *
 */
- (void) setId: (NSString *) value {
    __id = value;
    [self valueChangedFor:@"id"];
}
       
/** Setter implementation for property _self
 *
 */
- (void) setSelf: (NSString *) value {
    __self = value;
    [self valueChangedFor:@"self"];
}
       
/** Setter implementation for property createdTime
 *
 */
- (void) setCreatedTime: (NSDate *) value {
    _createdTime = value;
    [self valueChangedFor:@"createdTime"];
}
       
/** Setter implementation for property parentNotebook
 *
 */
- (void) setParentNotebook: (MSGraphNotebook *) value {
    _parentNotebook = value;
    [self valueChangedFor:@"parentNotebook"];
}
       
/** Setter implementation for property parentSectionGroup
 *
 */
- (void) setParentSectionGroup: (MSGraphSectionGroup *) value {
    _parentSectionGroup = value;
    [self valueChangedFor:@"parentSectionGroup"];
}
       
/** Setter implementation for property pages
 *
 */
- (void) setPages: (NSMutableArray *) value {
    _pages = value;
    [self valueChangedFor:@"pages"];
}
       

@end
