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



/** Implementation for MSOutlookEventMessage
 *
 */
@implementation MSOutlookEventMessage


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"MeetingMessageType", @"meetingMessageType", @"Event", @"event", @"DateTimeReceived", @"dateTimeReceived", @"DateTimeSent", @"dateTimeSent", @"HasAttachments", @"hasAttachments", @"Subject", @"subject", @"Body", @"body", @"BodyPreview", @"bodyPreview", @"Importance", @"importance", @"ParentFolderId", @"parentFolderId", @"Sender", @"sender", @"From", @"from", @"ToRecipients", @"toRecipients", @"CcRecipients", @"ccRecipients", @"BccRecipients", @"bccRecipients", @"ReplyTo", @"replyTo", @"ConversationId", @"conversationId", @"UniqueBody", @"uniqueBody", @"IsDeliveryReceiptRequested", @"isDeliveryReceiptRequested", @"IsReadReceiptRequested", @"isReadReceiptRequested", @"IsRead", @"isRead", @"IsDraft", @"isDraft", @"WebLink", @"webLink", @"Attachments", @"attachments", @"DateTimeCreated", @"dateTimeCreated", @"DateTimeLastModified", @"dateTimeLastModified", @"ChangeKey", @"changeKey", @"Categories", @"categories", @"Id", @"_id", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.EventMessage";
        
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_meetingMessageType = [dic objectForKey: @"MeetingMessageType"] != nil ? [MSOutlookMeetingMessageTypeSerializer fromString:[dic objectForKey: @"MeetingMessageType"]] : _meetingMessageType;
		_event = [dic objectForKey: @"Event"] != nil ? [[MSOutlookEvent alloc] initWithDictionary: [dic objectForKey: @"Event"]] : _event;

    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys: 
    		 [MSOutlookMeetingMessageTypeSerializer toString:_meetingMessageType], @"MeetingMessageType",
		 [_event toDictionary], @"Event",
            nil];
}


/** Setter implementation for property meetingMessageType
 *
 */
- (void) setMeetingMessageType: (MSOutlookMeetingMessageType) value {
    _meetingMessageType = value;
    [self valueChangedFor:@"MeetingMessageType"];
}
       

- (void)setMeetingMessageTypeString:(NSString *)string {
        
    _meetingMessageType = [MSOutlookMeetingMessageTypeSerializer fromString:string];
    [self valueChangedFor:@"MeetingMessageType"]; 
}

/** Setter implementation for property event
 *
 */
- (void) setEvent: (MSOutlookEvent *) value {
    _event = value;
    [self valueChangedFor:@"Event"];
}
       

@end
