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


/** Implementation for MSOutlookDateTimeTimeZone
 *
 */
@implementation MSOutlookDateTimeTimeZone


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"DateTime", @"dateTime", @"TimeZone", @"timeZone", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.DateTimeTimeZone";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_dateTime = [dic objectForKey: @"DateTime"] != nil ? [[dic objectForKey: @"DateTime"] copy] : _dateTime;
		_timeZone = [dic objectForKey: @"TimeZone"] != nil ? [[dic objectForKey: @"TimeZone"] copy] : _timeZone;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.dateTime copy];if (curVal!=nil) [dic setValue: curVal forKey: @"DateTime"];}
	{id curVal = [self.timeZone copy];if (curVal!=nil) [dic setValue: curVal forKey: @"TimeZone"];}
    [dic setValue: @"#Microsoft.OutlookServices.DateTimeTimeZone" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.dateTime;
    if([self.updatedValues containsObject:@"DateTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"DateTime"];
            }
    }
	{id curVal = self.timeZone;
    if([self.updatedValues containsObject:@"TimeZone"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"TimeZone"];
            }
    }
    return dic;
}


/** Setter implementation for property dateTime
 *
 */
- (void) setDateTime: (NSString *) value {
    _dateTime = value;
    [self valueChangedFor:@"DateTime"];
}
       
/** Setter implementation for property timeZone
 *
 */
- (void) setTimeZone: (NSString *) value {
    _timeZone = value;
    [self valueChangedFor:@"TimeZone"];
}
       

@end
