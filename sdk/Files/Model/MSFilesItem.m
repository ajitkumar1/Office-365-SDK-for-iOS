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



#import "MSFilesModels.h"



/** Implementation for MSFilesItem
 *
 */
@implementation MSFilesItem


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"createdBy", @"createdBy", @"eTag", @"eTag", @"id", @"_id", @"lastModifiedBy", @"lastModifiedBy", @"name", @"name", @"parentReference", @"parentReference", @"size", @"size", @"dateTimeCreated", @"dateTimeCreated", @"dateTimeLastModified", @"dateTimeLastModified", @"type", @"type", @"webUrl", @"webUrl", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.FileServices.Item";
        
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_createdBy = [dic objectForKey: @"createdBy"] != nil ? [[MSFilesIdentitySet alloc] initWithDictionary: [dic objectForKey: @"createdBy"]] : _createdBy;
		_eTag = [dic objectForKey: @"eTag"] != nil ? [[dic objectForKey: @"eTag"] copy] : _eTag;
		__id = [dic objectForKey: @"id"] != nil ? [[dic objectForKey: @"id"] copy] : __id;
		_lastModifiedBy = [dic objectForKey: @"lastModifiedBy"] != nil ? [[MSFilesIdentitySet alloc] initWithDictionary: [dic objectForKey: @"lastModifiedBy"]] : _lastModifiedBy;
		_name = [dic objectForKey: @"name"] != nil ? [[dic objectForKey: @"name"] copy] : _name;
		_parentReference = [dic objectForKey: @"parentReference"] != nil ? [[MSFilesItemReference alloc] initWithDictionary: [dic objectForKey: @"parentReference"]] : _parentReference;
		_size = [dic objectForKey: @"size"] != nil ? [[dic objectForKey: @"size"] longLongValue] : _size;
		_dateTimeCreated = [dic objectForKey: @"dateTimeCreated"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"dateTimeCreated"]] : _dateTimeCreated;
		_dateTimeLastModified = [dic objectForKey: @"dateTimeLastModified"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"dateTimeLastModified"]] : _dateTimeLastModified;
		_type = [dic objectForKey: @"type"] != nil ? [[dic objectForKey: @"type"] copy] : _type;
		_webUrl = [dic objectForKey: @"webUrl"] != nil ? [[dic objectForKey: @"webUrl"] copy] : _webUrl;

    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys: 
    		 [_createdBy toDictionary], @"createdBy",
		 [_eTag copy], @"eTag",
		 [__id copy], @"id",
		 [_lastModifiedBy toDictionary], @"lastModifiedBy",
		 [_name copy], @"name",
		 [_parentReference toDictionary], @"parentReference",
		 [NSNumber numberWithLongLong: _size], @"size",
		 [MSOrcObjectizer stringFromDate:_dateTimeCreated], @"dateTimeCreated",
		 [MSOrcObjectizer stringFromDate:_dateTimeLastModified], @"dateTimeLastModified",
		 [_type copy], @"type",
		 [_webUrl copy], @"webUrl",
            nil];
}


/** Setter implementation for property createdBy
 *
 */
- (void) setCreatedBy: (MSFilesIdentitySet *) value {
    _createdBy = value;
    [self valueChangedFor:@"createdBy"];
}
       
/** Setter implementation for property eTag
 *
 */
- (void) setETag: (NSString *) value {
    _eTag = value;
    [self valueChangedFor:@"eTag"];
}
       
/** Setter implementation for property _id
 *
 */
- (void) setId: (NSString *) value {
    __id = value;
    [self valueChangedFor:@"id"];
}
       
/** Setter implementation for property lastModifiedBy
 *
 */
- (void) setLastModifiedBy: (MSFilesIdentitySet *) value {
    _lastModifiedBy = value;
    [self valueChangedFor:@"lastModifiedBy"];
}
       
/** Setter implementation for property name
 *
 */
- (void) setName: (NSString *) value {
    _name = value;
    [self valueChangedFor:@"name"];
}
       
/** Setter implementation for property parentReference
 *
 */
- (void) setParentReference: (MSFilesItemReference *) value {
    _parentReference = value;
    [self valueChangedFor:@"parentReference"];
}
       
/** Setter implementation for property size
 *
 */
- (void) setSize: (long long) value {
    _size = value;
    [self valueChangedFor:@"size"];
}
       
/** Setter implementation for property dateTimeCreated
 *
 */
- (void) setDateTimeCreated: (NSDate *) value {
    _dateTimeCreated = value;
    [self valueChangedFor:@"dateTimeCreated"];
}
       
/** Setter implementation for property dateTimeLastModified
 *
 */
- (void) setDateTimeLastModified: (NSDate *) value {
    _dateTimeLastModified = value;
    [self valueChangedFor:@"dateTimeLastModified"];
}
       
/** Setter implementation for property type
 *
 */
- (void) setType: (NSString *) value {
    _type = value;
    [self valueChangedFor:@"type"];
}
       
/** Setter implementation for property webUrl
 *
 */
- (void) setWebUrl: (NSString *) value {
    _webUrl = value;
    [self valueChangedFor:@"webUrl"];
}
       

@end
