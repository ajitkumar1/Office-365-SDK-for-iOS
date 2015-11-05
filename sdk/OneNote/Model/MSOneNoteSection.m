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



#import "MSOneNoteModels.h"



/** Implementation for MSOneNoteSection
 *
 */
@implementation MSOneNoteSection


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"isDefault", @"isDefault", @"pagesUrl", @"pagesUrl", @"name", @"name", @"createdBy", @"createdBy", @"createdByUser", @"createdByUser", @"lastModifiedBy", @"lastModifiedBy", @"lastModifiedByUser", @"lastModifiedByUser", @"lastModifiedTime", @"lastModifiedTime", @"id", @"_id", @"self", @"_self", @"createdTime", @"createdTime", @"parentNotebook", @"parentNotebook", @"parentSectionGroup", @"parentSectionGroup", @"pages", @"pages", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OneNote.Api.Section";
        
        
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
		_createdByUser = [dic objectForKey: @"createdByUser"] != nil ? [[MSOneNoteIdentitySet alloc] initWithDictionary: [dic objectForKey: @"createdByUser"]] : _createdByUser;
		_lastModifiedBy = [dic objectForKey: @"lastModifiedBy"] != nil ? [[dic objectForKey: @"lastModifiedBy"] copy] : _lastModifiedBy;
		_lastModifiedByUser = [dic objectForKey: @"lastModifiedByUser"] != nil ? [[MSOneNoteIdentitySet alloc] initWithDictionary: [dic objectForKey: @"lastModifiedByUser"]] : _lastModifiedByUser;
		_lastModifiedTime = [dic objectForKey: @"lastModifiedTime"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"lastModifiedTime"]] : _lastModifiedTime;
		__id = [dic objectForKey: @"id"] != nil ? [[dic objectForKey: @"id"] copy] : __id;
		__self = [dic objectForKey: @"self"] != nil ? [[dic objectForKey: @"self"] copy] : __self;
		_createdTime = [dic objectForKey: @"createdTime"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"createdTime"]] : _createdTime;
		_parentNotebook = [dic objectForKey: @"parentNotebook"] != nil ? [[MSOneNoteNotebook alloc] initWithDictionary: [dic objectForKey: @"parentNotebook"]] : _parentNotebook;
		_parentSectionGroup = [dic objectForKey: @"parentSectionGroup"] != nil ? [[MSOneNoteSectionGroup alloc] initWithDictionary: [dic objectForKey: @"parentSectionGroup"]] : _parentSectionGroup;

        if([dic objectForKey: @"pages"] != [NSNull null]){
            _pages = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"pages"] count]];
            
            for (id object in [dic objectForKey: @"pages"]) {
                [_pages addObject:[[MSOneNotePage alloc] initWithDictionary: object]];
            }
        }
        

    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys: 
    		 (_isDefault?@"true":@"false"), @"isDefault",
		 [_pagesUrl copy], @"pagesUrl",
		 [_name copy], @"name",
		 [_createdBy copy], @"createdBy",
		 [_createdByUser toDictionary], @"createdByUser",
		 [_lastModifiedBy copy], @"lastModifiedBy",
		 [_lastModifiedByUser toDictionary], @"lastModifiedByUser",
		 [MSOrcObjectizer stringFromDate:_lastModifiedTime], @"lastModifiedTime",
		 [__id copy], @"id",
		 [__self copy], @"self",
		 [MSOrcObjectizer stringFromDate:_createdTime], @"createdTime",
		 [_parentNotebook toDictionary], @"parentNotebook",
		 [_parentSectionGroup toDictionary], @"parentSectionGroup",
		 [[NSMutableArray alloc] init], @"pages",
            nil];
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
       
/** Setter implementation for property createdByUser
 *
 */
- (void) setCreatedByUser: (MSOneNoteIdentitySet *) value {
    _createdByUser = value;
    [self valueChangedFor:@"createdByUser"];
}
       
/** Setter implementation for property lastModifiedBy
 *
 */
- (void) setLastModifiedBy: (NSString *) value {
    _lastModifiedBy = value;
    [self valueChangedFor:@"lastModifiedBy"];
}
       
/** Setter implementation for property lastModifiedByUser
 *
 */
- (void) setLastModifiedByUser: (MSOneNoteIdentitySet *) value {
    _lastModifiedByUser = value;
    [self valueChangedFor:@"lastModifiedByUser"];
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
- (void) setParentNotebook: (MSOneNoteNotebook *) value {
    _parentNotebook = value;
    [self valueChangedFor:@"parentNotebook"];
}
       
/** Setter implementation for property parentSectionGroup
 *
 */
- (void) setParentSectionGroup: (MSOneNoteSectionGroup *) value {
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
