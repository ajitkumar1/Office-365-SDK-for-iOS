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



#import "MSGraphServiceModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSGraphServicePost
 *
 */
@implementation MSGraphServicePost


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"Body", @"body", @"ReceivedDateTime", @"receivedDateTime", @"HasAttachments", @"hasAttachments", @"From", @"from", @"Sender", @"sender", @"ConversationThreadId", @"conversationThreadId", @"NewParticipants", @"newParticipants", @"ConversationId", @"conversationId", @"InReplyTo", @"inReplyTo", @"Attachments", @"attachments", @"CreatedDateTime", @"createdDateTime", @"LastModifiedDateTime", @"lastModifiedDateTime", @"ChangeKey", @"changeKey", @"Categories", @"categories", @"id", @"_id", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.post";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_body = (![dic objectForKey: @"Body"] || [ [dic objectForKey: @"Body"] isKindOfClass:[NSNull class]] )?_body:[[MSGraphServiceItemBody alloc] initWithDictionary: [dic objectForKey: @"Body"]];
		_receivedDateTime = (![dic objectForKey: @"ReceivedDateTime"] || [ [dic objectForKey: @"ReceivedDateTime"] isKindOfClass:[NSNull class]] )?_receivedDateTime:[MSOrcObjectizer dateFromString:[dic objectForKey: @"ReceivedDateTime"]];
		_hasAttachments = (![dic objectForKey: @"HasAttachments"] || [ [dic objectForKey: @"HasAttachments"] isKindOfClass:[NSNull class]] )?_hasAttachments:[[dic objectForKey: @"HasAttachments"] boolValue];
		_from = (![dic objectForKey: @"From"] || [ [dic objectForKey: @"From"] isKindOfClass:[NSNull class]] )?_from:[[MSGraphServiceRecipient alloc] initWithDictionary: [dic objectForKey: @"From"]];
		_sender = (![dic objectForKey: @"Sender"] || [ [dic objectForKey: @"Sender"] isKindOfClass:[NSNull class]] )?_sender:[[MSGraphServiceRecipient alloc] initWithDictionary: [dic objectForKey: @"Sender"]];
		_conversationThreadId = (![dic objectForKey: @"ConversationThreadId"] || [ [dic objectForKey: @"ConversationThreadId"] isKindOfClass:[NSNull class]] )?_conversationThreadId:[[dic objectForKey: @"ConversationThreadId"] copy];

        if([dic objectForKey: @"NewParticipants"] != [NSNull null]){
            _newParticipants = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"NewParticipants"]) {
                [_newParticipants addObject:[[MSGraphServiceRecipient alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_newParticipants resetChangedFlag];
        }
        
		_conversationId = (![dic objectForKey: @"ConversationId"] || [ [dic objectForKey: @"ConversationId"] isKindOfClass:[NSNull class]] )?_conversationId:[[dic objectForKey: @"ConversationId"] copy];
		_inReplyTo = (![dic objectForKey: @"InReplyTo"] || [ [dic objectForKey: @"InReplyTo"] isKindOfClass:[NSNull class]] )?_inReplyTo:[[MSGraphServicePost alloc] initWithDictionary: [dic objectForKey: @"InReplyTo"]];

        if([dic objectForKey: @"Attachments"] != [NSNull null]){
            _attachments = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"Attachments"]) {
                [_attachments addObject:[[MSGraphServiceAttachment alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_attachments resetChangedFlag];
        }
        
		self.createdDateTime = (![dic objectForKey: @"CreatedDateTime"] || [ [dic objectForKey: @"CreatedDateTime"] isKindOfClass:[NSNull class]] )?self.createdDateTime:[MSOrcObjectizer dateFromString:[dic objectForKey: @"CreatedDateTime"]];
		self.lastModifiedDateTime = (![dic objectForKey: @"LastModifiedDateTime"] || [ [dic objectForKey: @"LastModifiedDateTime"] isKindOfClass:[NSNull class]] )?self.lastModifiedDateTime:[MSOrcObjectizer dateFromString:[dic objectForKey: @"LastModifiedDateTime"]];
		self.changeKey = (![dic objectForKey: @"ChangeKey"] || [ [dic objectForKey: @"ChangeKey"] isKindOfClass:[NSNull class]] )?self.changeKey:[[dic objectForKey: @"ChangeKey"] copy];

        if([dic objectForKey: @"Categories"] != [NSNull null]){
            self.categories = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"Categories"]) {
                [self.categories addObject:[object copy]];
            }
            
            [(MSOrcChangesTrackingArray *)self.categories resetChangedFlag];
        }
        
		self._id = (![dic objectForKey: @"id"] || [ [dic objectForKey: @"id"] isKindOfClass:[NSNull class]] )?self._id:[[dic objectForKey: @"id"] copy];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.body toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"Body"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.receivedDateTime];if (curVal!=nil) [dic setValue: curVal forKey: @"ReceivedDateTime"];}
	{[dic setValue: (self.hasAttachments?@"true":@"false") forKey: @"HasAttachments"];}
	{id curVal = [self.from toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"From"];}
	{id curVal = [self.sender toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"Sender"];}
	{id curVal = [self.conversationThreadId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"ConversationThreadId"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.newParticipants) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"NewParticipants"];}
	{id curVal = [self.conversationId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"ConversationId"];}
	{id curVal = [self.inReplyTo toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"InReplyTo"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.attachments) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"Attachments"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.createdDateTime];if (curVal!=nil) [dic setValue: curVal forKey: @"CreatedDateTime"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.lastModifiedDateTime];if (curVal!=nil) [dic setValue: curVal forKey: @"LastModifiedDateTime"];}
	{id curVal = [self.changeKey copy];if (curVal!=nil) [dic setValue: curVal forKey: @"ChangeKey"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.categories) {
       [curVal addObject:[obj copy]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"Categories"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
    [dic setValue: @"#microsoft.graph.post" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.body;
    if([self.updatedValues containsObject:@"Body"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"Body"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Body"];
            }
        
            }}
	{id curVal = self.receivedDateTime;
    if([self.updatedValues containsObject:@"ReceivedDateTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"ReceivedDateTime"];
            }
    }
 if([self.updatedValues containsObject:@"HasAttachments"])
            { [dic setValue: (self.hasAttachments?@"true":@"false") forKey: @"HasAttachments"];
}	{id curVal = self.from;
    if([self.updatedValues containsObject:@"From"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"From"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"From"];
            }
        
            }}
	{id curVal = self.sender;
    if([self.updatedValues containsObject:@"Sender"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"Sender"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Sender"];
            }
        
            }}
	{id curVal = self.conversationThreadId;
    if([self.updatedValues containsObject:@"ConversationThreadId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ConversationThreadId"];
            }
    }
	{id curVal = self.newParticipants;
    if([self.updatedValues containsObject:@"NewParticipants"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"NewParticipants"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.newParticipants) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"NewParticipants"];
        }
        
            }}
	{id curVal = self.conversationId;
    if([self.updatedValues containsObject:@"ConversationId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ConversationId"];
            }
    }
	{id curVal = self.inReplyTo;
    if([self.updatedValues containsObject:@"InReplyTo"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"InReplyTo"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"InReplyTo"];
            }
        
            }}
	{id curVal = self.attachments;
    if([self.updatedValues containsObject:@"Attachments"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"Attachments"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.attachments) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"Attachments"];
        }
        
            }}
	{id curVal = self.createdDateTime;
    if([self.updatedValues containsObject:@"CreatedDateTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"CreatedDateTime"];
            }
    }
	{id curVal = self.lastModifiedDateTime;
    if([self.updatedValues containsObject:@"LastModifiedDateTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"LastModifiedDateTime"];
            }
    }
	{id curVal = self.changeKey;
    if([self.updatedValues containsObject:@"ChangeKey"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ChangeKey"];
            }
    }
	{id curVal = self.categories;
    if([self.updatedValues containsObject:@"Categories"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj copy]];
    }
    
            [dic setValue: curArray forKey: @"Categories"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.categories) {
       [curArray addObject:[obj copy]];
    }
    
                 [dic setValue: curArray forKey: @"Categories"];
        }
        
            }}
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
            }
    }
    return dic;
}


/** Setter implementation for property body
 *
 */
- (void) setBody: (MSGraphServiceItemBody *) value {
    _body = value;
    [self valueChangedFor:@"Body"];
}
       
/** Setter implementation for property receivedDateTime
 *
 */
- (void) setReceivedDateTime: (NSDate *) value {
    _receivedDateTime = value;
    [self valueChangedFor:@"ReceivedDateTime"];
}
       
/** Setter implementation for property hasAttachments
 *
 */
- (void) setHasAttachments: (bool) value {
    _hasAttachments = value;
    [self valueChangedFor:@"HasAttachments"];
}
       
/** Setter implementation for property from
 *
 */
- (void) setFrom: (MSGraphServiceRecipient *) value {
    _from = value;
    [self valueChangedFor:@"From"];
}
       
/** Setter implementation for property sender
 *
 */
- (void) setSender: (MSGraphServiceRecipient *) value {
    _sender = value;
    [self valueChangedFor:@"Sender"];
}
       
/** Setter implementation for property conversationThreadId
 *
 */
- (void) setConversationThreadId: (NSString *) value {
    _conversationThreadId = value;
    [self valueChangedFor:@"ConversationThreadId"];
}
       
/** Setter implementation for property newParticipants
 *
 */
- (void) setNewParticipants: (NSMutableArray *) value {
    _newParticipants = value;
    [self valueChangedFor:@"NewParticipants"];
}
       
/** Setter implementation for property conversationId
 *
 */
- (void) setConversationId: (NSString *) value {
    _conversationId = value;
    [self valueChangedFor:@"ConversationId"];
}
       
/** Setter implementation for property inReplyTo
 *
 */
- (void) setInReplyTo: (MSGraphServicePost *) value {
    _inReplyTo = value;
    [self valueChangedFor:@"InReplyTo"];
}
       
/** Setter implementation for property attachments
 *
 */
- (void) setAttachments: (NSMutableArray *) value {
    _attachments = value;
    [self valueChangedFor:@"Attachments"];
}
       

@end
