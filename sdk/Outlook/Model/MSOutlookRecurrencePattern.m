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


/** Implementation for MSOutlookRecurrencePattern
 *
 */
@implementation MSOutlookRecurrencePattern


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"Type", @"type", @"Interval", @"interval", @"Month", @"month", @"DayOfMonth", @"dayOfMonth", @"DaysOfWeek", @"daysOfWeek", @"FirstDayOfWeek", @"firstDayOfWeek", @"Index", @"index", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.RecurrencePattern";

        
		_daysOfWeek = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_type = [dic objectForKey: @"Type"] != nil ? [MSOutlookRecurrencePatternTypeSerializer fromString:[dic objectForKey: @"Type"]] : _type;
		_interval = [dic objectForKey: @"Interval"] != nil ? [[dic objectForKey: @"Interval"] intValue] : _interval;
		_month = [dic objectForKey: @"Month"] != nil ? [[dic objectForKey: @"Month"] intValue] : _month;
		_dayOfMonth = [dic objectForKey: @"DayOfMonth"] != nil ? [[dic objectForKey: @"DayOfMonth"] intValue] : _dayOfMonth;

        if([dic objectForKey: @"DaysOfWeek"] != [NSNull null]){
            _daysOfWeek = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"DaysOfWeek"] count]];
            
            for (id object in [dic objectForKey: @"DaysOfWeek"]) {
                [_daysOfWeek addObject:@([MSOutlookDayOfWeekSerializer fromString:object])];
            }
        }
        
		_firstDayOfWeek = [dic objectForKey: @"FirstDayOfWeek"] != nil ? [MSOutlookDayOfWeekSerializer fromString:[dic objectForKey: @"FirstDayOfWeek"]] : _firstDayOfWeek;
		_index = [dic objectForKey: @"Index"] != nil ? [MSOutlookWeekIndexSerializer fromString:[dic objectForKey: @"Index"]] : _index;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [MSOutlookRecurrencePatternTypeSerializer toString:self.type]; if (curVal!=nil) [dic setValue: curVal forKey: @"Type"];}
	{id curVal = [NSNumber numberWithInt: self.interval]; if (curVal!=nil) [dic setValue: curVal forKey: @"Interval"];}
	{id curVal = [NSNumber numberWithInt: self.month]; if (curVal!=nil) [dic setValue: curVal forKey: @"Month"];}
	{id curVal = [NSNumber numberWithInt: self.dayOfMonth]; if (curVal!=nil) [dic setValue: curVal forKey: @"DayOfMonth"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"DaysOfWeek"];}
	{id curVal = [MSOutlookDayOfWeekSerializer toString:self.firstDayOfWeek]; if (curVal!=nil) [dic setValue: curVal forKey: @"FirstDayOfWeek"];}
	{id curVal = [MSOutlookWeekIndexSerializer toString:self.index]; if (curVal!=nil) [dic setValue: curVal forKey: @"Index"];}
    [dic setValue: @"#Microsoft.OutlookServices.RecurrencePattern" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.type;
    if([self.updatedValues containsObject:@"Type"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOutlookRecurrencePatternTypeSerializer toString:curVal] forKey: @"Type"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Type"];
            }
        
            }}
	{id curVal = self.interval;
    if([self.updatedValues containsObject:@"Interval"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[NSNumber numberWithInt: curVal] forKey: @"Interval"];
    }
    }
	{id curVal = self.month;
    if([self.updatedValues containsObject:@"Month"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[NSNumber numberWithInt: curVal] forKey: @"Month"];
    }
    }
	{id curVal = self.dayOfMonth;
    if([self.updatedValues containsObject:@"DayOfMonth"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[NSNumber numberWithInt: curVal] forKey: @"DayOfMonth"];
    }
    }
	{id curVal = self.daysOfWeek;
    if([self.updatedValues containsObject:@"DaysOfWeek"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOutlookDayOfWeekSerializer toString:curVal] forKey: @"DaysOfWeek"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.firstDayOfWeek;
    if([self.updatedValues containsObject:@"FirstDayOfWeek"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOutlookDayOfWeekSerializer toString:curVal] forKey: @"FirstDayOfWeek"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"FirstDayOfWeek"];
            }
        
            }}
	{id curVal = self.index;
    if([self.updatedValues containsObject:@"Index"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOutlookWeekIndexSerializer toString:curVal] forKey: @"Index"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Index"];
            }
        
            }}
    return dic;
}


/** Setter implementation for property type
 *
 */
- (void) setType: (MSOutlookRecurrencePatternType) value {
    _type = value;
    [self valueChangedFor:@"Type"];
}
       

- (void)setTypeString:(NSString *)string {
        
    _type = [MSOutlookRecurrencePatternTypeSerializer fromString:string];
    [self valueChangedFor:@"Type"]; 
}

/** Setter implementation for property interval
 *
 */
- (void) setInterval: (int) value {
    _interval = value;
    [self valueChangedFor:@"Interval"];
}
       
/** Setter implementation for property month
 *
 */
- (void) setMonth: (int) value {
    _month = value;
    [self valueChangedFor:@"Month"];
}
       
/** Setter implementation for property dayOfMonth
 *
 */
- (void) setDayOfMonth: (int) value {
    _dayOfMonth = value;
    [self valueChangedFor:@"DayOfMonth"];
}
       
/** Setter implementation for property daysOfWeek
 *
 */
- (void) setDaysOfWeek: (NSMutableArray *) value {
    _daysOfWeek = value;
    [self valueChangedFor:@"DaysOfWeek"];
}
       
/** Setter implementation for property firstDayOfWeek
 *
 */
- (void) setFirstDayOfWeek: (MSOutlookDayOfWeek) value {
    _firstDayOfWeek = value;
    [self valueChangedFor:@"FirstDayOfWeek"];
}
       

- (void)setFirstDayOfWeekString:(NSString *)string {
        
    _firstDayOfWeek = [MSOutlookDayOfWeekSerializer fromString:string];
    [self valueChangedFor:@"FirstDayOfWeek"]; 
}

/** Setter implementation for property index
 *
 */
- (void) setIndex: (MSOutlookWeekIndex) value {
    _index = value;
    [self valueChangedFor:@"Index"];
}
       

- (void)setIndexString:(NSString *)string {
        
    _index = [MSOutlookWeekIndexSerializer fromString:string];
    [self valueChangedFor:@"Index"]; 
}


@end
