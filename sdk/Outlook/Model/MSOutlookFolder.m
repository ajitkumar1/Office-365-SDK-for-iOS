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



#import "MSOutlookModels.h"



/** Implementation for MSOutlookFolder
 *
 */
@implementation MSOutlookFolder


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"DisplayName", @"displayName", @"ParentFolderId", @"parentFolderId", @"ChildFolderCount", @"childFolderCount", @"UnreadItemCount", @"unreadItemCount", @"TotalItemCount", @"totalItemCount", @"Messages", @"messages", @"ChildFolders", @"childFolders", @"Id", @"_id", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.Folder";
        
        
		_messages = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_childFolders = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_displayName = [dic objectForKey: @"DisplayName"] != nil ? [[dic objectForKey: @"DisplayName"] copy] : _displayName;
		_parentFolderId = [dic objectForKey: @"ParentFolderId"] != nil ? [[dic objectForKey: @"ParentFolderId"] copy] : _parentFolderId;
		_childFolderCount = [dic objectForKey: @"ChildFolderCount"] != nil ? [[dic objectForKey: @"ChildFolderCount"] intValue] : _childFolderCount;
		_unreadItemCount = [dic objectForKey: @"UnreadItemCount"] != nil ? [[dic objectForKey: @"UnreadItemCount"] intValue] : _unreadItemCount;
		_totalItemCount = [dic objectForKey: @"TotalItemCount"] != nil ? [[dic objectForKey: @"TotalItemCount"] intValue] : _totalItemCount;

        if([dic objectForKey: @"Messages"] != [NSNull null]){
            _messages = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"Messages"] count]];
            
            for (id object in [dic objectForKey: @"Messages"]) {
                [_messages addObject:[[MSOutlookMessage alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"ChildFolders"] != [NSNull null]){
            _childFolders = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"ChildFolders"] count]];
            
            for (id object in [dic objectForKey: @"ChildFolders"]) {
                [_childFolders addObject:[[MSOutlookFolder alloc] initWithDictionary: object]];
            }
        }
        
		self._id = [dic objectForKey: @"Id"] != nil ? [[dic objectForKey: @"Id"] copy] : self._id;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.displayName copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"DisplayName"];}
	{id curVal = [self.parentFolderId copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"ParentFolderId"];}
	{id curVal = [NSNumber numberWithInt: self.childFolderCount]; if (curVal!=nil) [dic setValue: curVal forKey: @"ChildFolderCount"];}
	{id curVal = [NSNumber numberWithInt: self.unreadItemCount]; if (curVal!=nil) [dic setValue: curVal forKey: @"UnreadItemCount"];}
	{id curVal = [NSNumber numberWithInt: self.totalItemCount]; if (curVal!=nil) [dic setValue: curVal forKey: @"TotalItemCount"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"Messages"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"ChildFolders"];}
	{id curVal = [self._id copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"Id"];}
    [dic setValue: @"#Microsoft.OutlookServices.Folder" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.displayName;
    if([self.updatedValues containsObject:@"DisplayName"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"DisplayName"];
    }
    }
	{id curVal = self.parentFolderId;
    if([self.updatedValues containsObject:@"ParentFolderId"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ParentFolderId"];
    }
    }
	{id curVal = self.childFolderCount;
    if([self.updatedValues containsObject:@"ChildFolderCount"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[NSNumber numberWithInt: curVal] forKey: @"ChildFolderCount"];
    }
    }
	{id curVal = self.unreadItemCount;
    if([self.updatedValues containsObject:@"UnreadItemCount"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[NSNumber numberWithInt: curVal] forKey: @"UnreadItemCount"];
    }
    }
	{id curVal = self.totalItemCount;
    if([self.updatedValues containsObject:@"TotalItemCount"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[NSNumber numberWithInt: curVal] forKey: @"TotalItemCount"];
    }
    }
	{id curVal = self.messages;
    if([self.updatedValues containsObject:@"Messages"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"Messages"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.childFolders;
    if([self.updatedValues containsObject:@"ChildFolders"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"ChildFolders"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"Id"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Id"];
    }
    }
    return dic;
}


/** Setter implementation for property displayName
 *
 */
- (void) setDisplayName: (NSString *) value {
    _displayName = value;
    [self valueChangedFor:@"DisplayName"];
}
       
/** Setter implementation for property parentFolderId
 *
 */
- (void) setParentFolderId: (NSString *) value {
    _parentFolderId = value;
    [self valueChangedFor:@"ParentFolderId"];
}
       
/** Setter implementation for property childFolderCount
 *
 */
- (void) setChildFolderCount: (int) value {
    _childFolderCount = value;
    [self valueChangedFor:@"ChildFolderCount"];
}
       
/** Setter implementation for property unreadItemCount
 *
 */
- (void) setUnreadItemCount: (int) value {
    _unreadItemCount = value;
    [self valueChangedFor:@"UnreadItemCount"];
}
       
/** Setter implementation for property totalItemCount
 *
 */
- (void) setTotalItemCount: (int) value {
    _totalItemCount = value;
    [self valueChangedFor:@"TotalItemCount"];
}
       
/** Setter implementation for property messages
 *
 */
- (void) setMessages: (NSMutableArray *) value {
    _messages = value;
    [self valueChangedFor:@"Messages"];
}
       
/** Setter implementation for property childFolders
 *
 */
- (void) setChildFolders: (NSMutableArray *) value {
    _childFolders = value;
    [self valueChangedFor:@"ChildFolders"];
}
       

@end
