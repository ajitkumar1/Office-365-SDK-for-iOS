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



/** Implementation for MSOutlookCalendar
 *
 */
@implementation MSOutlookCalendar


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"Name", @"name", @"Color", @"color", @"ChangeKey", @"changeKey", @"Events", @"events", @"CalendarView", @"calendarView", @"Id", @"_id", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.Calendar";
        
        
		_events = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_calendarView = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_name = [dic objectForKey: @"Name"] != nil ? [[dic objectForKey: @"Name"] copy] : _name;
		_color = [dic objectForKey: @"Color"] != nil ? [MSOutlookCalendarColorSerializer fromString:[dic objectForKey: @"Color"]] : _color;
		_changeKey = [dic objectForKey: @"ChangeKey"] != nil ? [[dic objectForKey: @"ChangeKey"] copy] : _changeKey;

        if([dic objectForKey: @"Events"] != [NSNull null]){
            _events = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"Events"] count]];
            
            for (id object in [dic objectForKey: @"Events"]) {
                [_events addObject:[[MSOutlookEvent alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"CalendarView"] != [NSNull null]){
            _calendarView = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"CalendarView"] count]];
            
            for (id object in [dic objectForKey: @"CalendarView"]) {
                [_calendarView addObject:[[MSOutlookEvent alloc] initWithDictionary: object]];
            }
        }
        
		self._id = [dic objectForKey: @"Id"] != nil ? [[dic objectForKey: @"Id"] copy] : self._id;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.name copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"Name"];}
	{id curVal = [MSOutlookCalendarColorSerializer toString:self.color]; if (curVal!=nil) [dic setValue: curVal forKey: @"Color"];}
	{id curVal = [self.changeKey copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"ChangeKey"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"Events"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"CalendarView"];}
	{id curVal = [self._id copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"Id"];}
    [dic setValue: @"#Microsoft.OutlookServices.Calendar" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.name;
    if([self.updatedValues containsObject:@"Name"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Name"];
    }
    }
	{id curVal = self.color;
    if([self.updatedValues containsObject:@"Color"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOutlookCalendarColorSerializer toString:curVal] forKey: @"Color"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Color"];
            }
        
            }}
	{id curVal = self.changeKey;
    if([self.updatedValues containsObject:@"ChangeKey"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ChangeKey"];
    }
    }
	{id curVal = self.events;
    if([self.updatedValues containsObject:@"Events"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"Events"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.calendarView;
    if([self.updatedValues containsObject:@"CalendarView"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"CalendarView"];
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


/** Setter implementation for property name
 *
 */
- (void) setName: (NSString *) value {
    _name = value;
    [self valueChangedFor:@"Name"];
}
       
/** Setter implementation for property color
 *
 */
- (void) setColor: (MSOutlookCalendarColor) value {
    _color = value;
    [self valueChangedFor:@"Color"];
}
       

- (void)setColorString:(NSString *)string {
        
    _color = [MSOutlookCalendarColorSerializer fromString:string];
    [self valueChangedFor:@"Color"]; 
}

/** Setter implementation for property changeKey
 *
 */
- (void) setChangeKey: (NSString *) value {
    _changeKey = value;
    [self valueChangedFor:@"ChangeKey"];
}
       
/** Setter implementation for property events
 *
 */
- (void) setEvents: (NSMutableArray *) value {
    _events = value;
    [self valueChangedFor:@"Events"];
}
       
/** Setter implementation for property calendarView
 *
 */
- (void) setCalendarView: (NSMutableArray *) value {
    _calendarView = value;
    [self valueChangedFor:@"CalendarView"];
}
       

@end
