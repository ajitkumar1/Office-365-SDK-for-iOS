//  
//
//  Copyright (c) 2014 Microsoft Open Technologies, Inc.
//  All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Protocols.h"
#import "Item.h"

@class ItemBody;
@class Importance;
@class Location;
@class FreeBusyStatus;
@class EventType;
@class Attendee;
@class PatternedRecurrence;
@class Recipient;
@interface Event : Item	

@property NSString *Subject;
@property ItemBody *Body;
@property NSString *BodyPreview;
@property Importance *Importance;
@property bool HasAttachments;
@property NSDate *Start;
@property NSDate *End;
@property Location *Location;
@property FreeBusyStatus *ShowAs;
@property bool IsAllDay;
@property bool IsCancelled;
@property bool IsOrganizer;
@property bool ResponseRequested;
@property EventType *Type;
@property NSString *SeriesMasterId;
@property NSMutableArray<Attendee> *Attendees;
@property PatternedRecurrence *Recurrence;
@property Recipient *Organizer;

@end