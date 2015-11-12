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



/** Implementation for MSOutlookCalendarGroup
 *
 */
@implementation MSOutlookCalendarGroup


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"Name", @"name", @"ClassId", @"classId", @"ChangeKey", @"changeKey", @"Calendars", @"calendars", @"Id", @"_id", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.CalendarGroup";
        
        
		_calendars = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_name = [dic objectForKey: @"Name"] != nil ? [[dic objectForKey: @"Name"] copy] : _name;
		_classId = [dic objectForKey: @"ClassId"] != nil ? [[dic objectForKey: @"ClassId"] copy] : _classId;
		_changeKey = [dic objectForKey: @"ChangeKey"] != nil ? [[dic objectForKey: @"ChangeKey"] copy] : _changeKey;

        if([dic objectForKey: @"Calendars"] != [NSNull null]){
            _calendars = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"Calendars"] count]];
            
            for (id object in [dic objectForKey: @"Calendars"]) {
                [_calendars addObject:[[MSOutlookCalendar alloc] initWithDictionary: object]];
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
	{id curVal = [self.classId copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"ClassId"];}
	{id curVal = [self.changeKey copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"ChangeKey"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"Calendars"];}
	{id curVal = [self._id copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"Id"];}
    [dic setValue: @"#Microsoft.OutlookServices.CalendarGroup" forKey: @"@odata.type"];

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
	{id curVal = self.classId;
    if([self.updatedValues containsObject:@"ClassId"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ClassId"];
    }
    }
	{id curVal = self.changeKey;
    if([self.updatedValues containsObject:@"ChangeKey"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ChangeKey"];
    }
    }
	{id curVal = self.calendars;
    if([self.updatedValues containsObject:@"Calendars"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"Calendars"];
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
       
/** Setter implementation for property classId
 *
 */
- (void) setClassId: (NSString *) value {
    _classId = value;
    [self valueChangedFor:@"ClassId"];
}
       
/** Setter implementation for property changeKey
 *
 */
- (void) setChangeKey: (NSString *) value {
    _changeKey = value;
    [self valueChangedFor:@"ChangeKey"];
}
       
/** Setter implementation for property calendars
 *
 */
- (void) setCalendars: (NSMutableArray *) value {
    _calendars = value;
    [self valueChangedFor:@"Calendars"];
}
       

@end
