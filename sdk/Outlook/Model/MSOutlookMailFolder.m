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
#import "core/MSOrcObjectizer.h"


/** Implementation for MSOutlookMailFolder
 *
 */
@implementation MSOutlookMailFolder


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

		_odataType = @"#Microsoft.OutlookServices.MailFolder";
        
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
            _messages = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"Messages"]) {
                [_messages addObject:[[MSOutlookMessage alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_messages resetChangedFlag];
        }
        

        if([dic objectForKey: @"ChildFolders"] != [NSNull null]){
            _childFolders = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"ChildFolders"]) {
                [_childFolders addObject:[[MSOutlookMailFolder alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_childFolders resetChangedFlag];
        }
        
		self._id = [dic objectForKey: @"Id"] != nil ? [[dic objectForKey: @"Id"] copy] : self._id;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.displayName copy];if (curVal!=nil) [dic setValue: curVal forKey: @"DisplayName"];}
	{id curVal = [self.parentFolderId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"ParentFolderId"];}
	{[dic setValue: [NSNumber numberWithInt: self.childFolderCount] forKey: @"ChildFolderCount"];}
	{[dic setValue: [NSNumber numberWithInt: self.unreadItemCount] forKey: @"UnreadItemCount"];}
	{[dic setValue: [NSNumber numberWithInt: self.totalItemCount] forKey: @"TotalItemCount"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.messages) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"Messages"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.childFolders) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"ChildFolders"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Id"];}
    [dic setValue: @"#Microsoft.OutlookServices.MailFolder" forKey: @"@odata.type"];

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
 if([self.updatedValues containsObject:@"ChildFolderCount"])
            { [dic setValue: [NSNumber numberWithInt: self.childFolderCount] forKey: @"ChildFolderCount"];
} if([self.updatedValues containsObject:@"UnreadItemCount"])
            { [dic setValue: [NSNumber numberWithInt: self.unreadItemCount] forKey: @"UnreadItemCount"];
} if([self.updatedValues containsObject:@"TotalItemCount"])
            { [dic setValue: [NSNumber numberWithInt: self.totalItemCount] forKey: @"TotalItemCount"];
}	{id curVal = self.messages;
    if([self.updatedValues containsObject:@"Messages"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"Messages"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.messages) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"Messages"];
        }
        
            }}
	{id curVal = self.childFolders;
    if([self.updatedValues containsObject:@"ChildFolders"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"ChildFolders"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.childFolders) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"ChildFolders"];
        }
        
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
