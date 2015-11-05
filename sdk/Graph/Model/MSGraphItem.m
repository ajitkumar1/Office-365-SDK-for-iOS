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



/** Implementation for MSGraphItem
 *
 */
@implementation MSGraphItem


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"content", @"content", @"createdBy", @"createdBy", @"createdDateTime", @"createdDateTime", @"cTag", @"cTag", @"description", @"_description", @"eTag", @"eTag", @"id", @"_id", @"lastModifiedBy", @"lastModifiedBy", @"lastModifiedDateTime", @"lastModifiedDateTime", @"name", @"name", @"parentReference", @"parentReference", @"size", @"size", @"webDavUrl", @"webDavUrl", @"webUrl", @"webUrl", @"audio", @"audio", @"deleted", @"deleted", @"file", @"file", @"fileSystemInfo", @"fileSystemInfo", @"folder", @"folder", @"image", @"image", @"location", @"location", @"openWith", @"openWith", @"photo", @"photo", @"searchResult", @"searchResult", @"shared", @"shared", @"specialFolder", @"specialFolder", @"video", @"video", @"createdByUser", @"createdByUser", @"lastModifiedByUser", @"lastModifiedByUser", @"permissions", @"permissions", @"versions", @"versions", @"children", @"children", @"thumbnails", @"thumbnails", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.item";
        
        
		_permissions = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_versions = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_children = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_thumbnails = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_content = [dic objectForKey: @"content"] != nil ? nil/*NSStream*/ : _content;
		_createdBy = [dic objectForKey: @"createdBy"] != nil ? [[MSGraphIdentitySet alloc] initWithDictionary: [dic objectForKey: @"createdBy"]] : _createdBy;
		_createdDateTime = [dic objectForKey: @"createdDateTime"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"createdDateTime"]] : _createdDateTime;
		_cTag = [dic objectForKey: @"cTag"] != nil ? [[dic objectForKey: @"cTag"] copy] : _cTag;
		__description = [dic objectForKey: @"description"] != nil ? [[dic objectForKey: @"description"] copy] : __description;
		_eTag = [dic objectForKey: @"eTag"] != nil ? [[dic objectForKey: @"eTag"] copy] : _eTag;
		__id = [dic objectForKey: @"id"] != nil ? [[dic objectForKey: @"id"] copy] : __id;
		_lastModifiedBy = [dic objectForKey: @"lastModifiedBy"] != nil ? [[MSGraphIdentitySet alloc] initWithDictionary: [dic objectForKey: @"lastModifiedBy"]] : _lastModifiedBy;
		_lastModifiedDateTime = [dic objectForKey: @"lastModifiedDateTime"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"lastModifiedDateTime"]] : _lastModifiedDateTime;
		_name = [dic objectForKey: @"name"] != nil ? [[dic objectForKey: @"name"] copy] : _name;
		_parentReference = [dic objectForKey: @"parentReference"] != nil ? [[MSGraphItemReference alloc] initWithDictionary: [dic objectForKey: @"parentReference"]] : _parentReference;
		_size = [dic objectForKey: @"size"] != nil ? [[dic objectForKey: @"size"] longLongValue] : _size;
		_webDavUrl = [dic objectForKey: @"webDavUrl"] != nil ? [[dic objectForKey: @"webDavUrl"] copy] : _webDavUrl;
		_webUrl = [dic objectForKey: @"webUrl"] != nil ? [[dic objectForKey: @"webUrl"] copy] : _webUrl;
		_audio = [dic objectForKey: @"audio"] != nil ? [[MSGraphAudio alloc] initWithDictionary: [dic objectForKey: @"audio"]] : _audio;
		_deleted = [dic objectForKey: @"deleted"] != nil ? [[MSGraphDeleted alloc] initWithDictionary: [dic objectForKey: @"deleted"]] : _deleted;
		_file = [dic objectForKey: @"file"] != nil ? [[MSGraphFile alloc] initWithDictionary: [dic objectForKey: @"file"]] : _file;
		_fileSystemInfo = [dic objectForKey: @"fileSystemInfo"] != nil ? [[MSGraphFileSystemInfo alloc] initWithDictionary: [dic objectForKey: @"fileSystemInfo"]] : _fileSystemInfo;
		_folder = [dic objectForKey: @"folder"] != nil ? [[MSGraphFolder alloc] initWithDictionary: [dic objectForKey: @"folder"]] : _folder;
		_image = [dic objectForKey: @"image"] != nil ? [[MSGraphImage alloc] initWithDictionary: [dic objectForKey: @"image"]] : _image;
		_location = [dic objectForKey: @"location"] != nil ? [[MSGraphLocation alloc] initWithDictionary: [dic objectForKey: @"location"]] : _location;
		_openWith = [dic objectForKey: @"openWith"] != nil ? [[MSGraphOpenWithSet alloc] initWithDictionary: [dic objectForKey: @"openWith"]] : _openWith;
		_photo = [dic objectForKey: @"photo"] != nil ? [[MSGraphPhoto alloc] initWithDictionary: [dic objectForKey: @"photo"]] : _photo;
		_searchResult = [dic objectForKey: @"searchResult"] != nil ? [[MSGraphSearchResult alloc] initWithDictionary: [dic objectForKey: @"searchResult"]] : _searchResult;
		_shared = [dic objectForKey: @"shared"] != nil ? [[MSGraphShared alloc] initWithDictionary: [dic objectForKey: @"shared"]] : _shared;
		_specialFolder = [dic objectForKey: @"specialFolder"] != nil ? [[MSGraphSpecialFolder alloc] initWithDictionary: [dic objectForKey: @"specialFolder"]] : _specialFolder;
		_video = [dic objectForKey: @"video"] != nil ? [[MSGraphVideo alloc] initWithDictionary: [dic objectForKey: @"video"]] : _video;
		_createdByUser = [dic objectForKey: @"createdByUser"] != nil ? [[MSGraphUser alloc] initWithDictionary: [dic objectForKey: @"createdByUser"]] : _createdByUser;
		_lastModifiedByUser = [dic objectForKey: @"lastModifiedByUser"] != nil ? [[MSGraphUser alloc] initWithDictionary: [dic objectForKey: @"lastModifiedByUser"]] : _lastModifiedByUser;

        if([dic objectForKey: @"permissions"] != [NSNull null]){
            _permissions = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"permissions"] count]];
            
            for (id object in [dic objectForKey: @"permissions"]) {
                [_permissions addObject:[[MSGraphPermission alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"versions"] != [NSNull null]){
            _versions = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"versions"] count]];
            
            for (id object in [dic objectForKey: @"versions"]) {
                [_versions addObject:[[MSGraphItem alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"children"] != [NSNull null]){
            _children = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"children"] count]];
            
            for (id object in [dic objectForKey: @"children"]) {
                [_children addObject:[[MSGraphItem alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"thumbnails"] != [NSNull null]){
            _thumbnails = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"thumbnails"] count]];
            
            for (id object in [dic objectForKey: @"thumbnails"]) {
                [_thumbnails addObject:[[MSGraphThumbnailSet alloc] initWithDictionary: object]];
            }
        }
        

    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys: 
    		 nil/*NSStream*/, @"content",
		 [_createdBy toDictionary], @"createdBy",
		 [MSOrcObjectizer stringFromDate:_createdDateTime], @"createdDateTime",
		 [_cTag copy], @"cTag",
		 [__description copy], @"description",
		 [_eTag copy], @"eTag",
		 [__id copy], @"id",
		 [_lastModifiedBy toDictionary], @"lastModifiedBy",
		 [MSOrcObjectizer stringFromDate:_lastModifiedDateTime], @"lastModifiedDateTime",
		 [_name copy], @"name",
		 [_parentReference toDictionary], @"parentReference",
		 [NSNumber numberWithLongLong: _size], @"size",
		 [_webDavUrl copy], @"webDavUrl",
		 [_webUrl copy], @"webUrl",
		 [_audio toDictionary], @"audio",
		 [_deleted toDictionary], @"deleted",
		 [_file toDictionary], @"file",
		 [_fileSystemInfo toDictionary], @"fileSystemInfo",
		 [_folder toDictionary], @"folder",
		 [_image toDictionary], @"image",
		 [_location toDictionary], @"location",
		 [_openWith toDictionary], @"openWith",
		 [_photo toDictionary], @"photo",
		 [_searchResult toDictionary], @"searchResult",
		 [_shared toDictionary], @"shared",
		 [_specialFolder toDictionary], @"specialFolder",
		 [_video toDictionary], @"video",
		 [_createdByUser toDictionary], @"createdByUser",
		 [_lastModifiedByUser toDictionary], @"lastModifiedByUser",
		 [[NSMutableArray alloc] init], @"permissions",
		 [[NSMutableArray alloc] init], @"versions",
		 [[NSMutableArray alloc] init], @"children",
		 [[NSMutableArray alloc] init], @"thumbnails",
            nil];
}


/** Setter implementation for property content
 *
 */
- (void) setContent: (NSStream *) value {
    _content = value;
    [self valueChangedFor:@"content"];
}
       
/** Setter implementation for property createdBy
 *
 */
- (void) setCreatedBy: (MSGraphIdentitySet *) value {
    _createdBy = value;
    [self valueChangedFor:@"createdBy"];
}
       
/** Setter implementation for property createdDateTime
 *
 */
- (void) setCreatedDateTime: (NSDate *) value {
    _createdDateTime = value;
    [self valueChangedFor:@"createdDateTime"];
}
       
/** Setter implementation for property cTag
 *
 */
- (void) setCTag: (NSString *) value {
    _cTag = value;
    [self valueChangedFor:@"cTag"];
}
       
/** Setter implementation for property _description
 *
 */
- (void) setDescription: (NSString *) value {
    __description = value;
    [self valueChangedFor:@"description"];
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
- (void) setLastModifiedBy: (MSGraphIdentitySet *) value {
    _lastModifiedBy = value;
    [self valueChangedFor:@"lastModifiedBy"];
}
       
/** Setter implementation for property lastModifiedDateTime
 *
 */
- (void) setLastModifiedDateTime: (NSDate *) value {
    _lastModifiedDateTime = value;
    [self valueChangedFor:@"lastModifiedDateTime"];
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
- (void) setParentReference: (MSGraphItemReference *) value {
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
       
/** Setter implementation for property webDavUrl
 *
 */
- (void) setWebDavUrl: (NSString *) value {
    _webDavUrl = value;
    [self valueChangedFor:@"webDavUrl"];
}
       
/** Setter implementation for property webUrl
 *
 */
- (void) setWebUrl: (NSString *) value {
    _webUrl = value;
    [self valueChangedFor:@"webUrl"];
}
       
/** Setter implementation for property audio
 *
 */
- (void) setAudio: (MSGraphAudio *) value {
    _audio = value;
    [self valueChangedFor:@"audio"];
}
       
/** Setter implementation for property deleted
 *
 */
- (void) setDeleted: (MSGraphDeleted *) value {
    _deleted = value;
    [self valueChangedFor:@"deleted"];
}
       
/** Setter implementation for property file
 *
 */
- (void) setFile: (MSGraphFile *) value {
    _file = value;
    [self valueChangedFor:@"file"];
}
       
/** Setter implementation for property fileSystemInfo
 *
 */
- (void) setFileSystemInfo: (MSGraphFileSystemInfo *) value {
    _fileSystemInfo = value;
    [self valueChangedFor:@"fileSystemInfo"];
}
       
/** Setter implementation for property folder
 *
 */
- (void) setFolder: (MSGraphFolder *) value {
    _folder = value;
    [self valueChangedFor:@"folder"];
}
       
/** Setter implementation for property image
 *
 */
- (void) setImage: (MSGraphImage *) value {
    _image = value;
    [self valueChangedFor:@"image"];
}
       
/** Setter implementation for property location
 *
 */
- (void) setLocation: (MSGraphLocation *) value {
    _location = value;
    [self valueChangedFor:@"location"];
}
       
/** Setter implementation for property openWith
 *
 */
- (void) setOpenWith: (MSGraphOpenWithSet *) value {
    _openWith = value;
    [self valueChangedFor:@"openWith"];
}
       
/** Setter implementation for property photo
 *
 */
- (void) setPhoto: (MSGraphPhoto *) value {
    _photo = value;
    [self valueChangedFor:@"photo"];
}
       
/** Setter implementation for property searchResult
 *
 */
- (void) setSearchResult: (MSGraphSearchResult *) value {
    _searchResult = value;
    [self valueChangedFor:@"searchResult"];
}
       
/** Setter implementation for property shared
 *
 */
- (void) setShared: (MSGraphShared *) value {
    _shared = value;
    [self valueChangedFor:@"shared"];
}
       
/** Setter implementation for property specialFolder
 *
 */
- (void) setSpecialFolder: (MSGraphSpecialFolder *) value {
    _specialFolder = value;
    [self valueChangedFor:@"specialFolder"];
}
       
/** Setter implementation for property video
 *
 */
- (void) setVideo: (MSGraphVideo *) value {
    _video = value;
    [self valueChangedFor:@"video"];
}
       
/** Setter implementation for property createdByUser
 *
 */
- (void) setCreatedByUser: (MSGraphUser *) value {
    _createdByUser = value;
    [self valueChangedFor:@"createdByUser"];
}
       
/** Setter implementation for property lastModifiedByUser
 *
 */
- (void) setLastModifiedByUser: (MSGraphUser *) value {
    _lastModifiedByUser = value;
    [self valueChangedFor:@"lastModifiedByUser"];
}
       
/** Setter implementation for property permissions
 *
 */
- (void) setPermissions: (NSMutableArray *) value {
    _permissions = value;
    [self valueChangedFor:@"permissions"];
}
       
/** Setter implementation for property versions
 *
 */
- (void) setVersions: (NSMutableArray *) value {
    _versions = value;
    [self valueChangedFor:@"versions"];
}
       
/** Setter implementation for property children
 *
 */
- (void) setChildren: (NSMutableArray *) value {
    _children = value;
    [self valueChangedFor:@"children"];
}
       
/** Setter implementation for property thumbnails
 *
 */
- (void) setThumbnails: (NSMutableArray *) value {
    _thumbnails = value;
    [self valueChangedFor:@"thumbnails"];
}
       

@end
