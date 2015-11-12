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


/** Implementation for MSOutlookPatternedRecurrence
 *
 */
@implementation MSOutlookPatternedRecurrence


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"Pattern", @"pattern", @"Range", @"range", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.PatternedRecurrence";

        
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_pattern = [dic objectForKey: @"Pattern"] != nil ? [[MSOutlookRecurrencePattern alloc] initWithDictionary: [dic objectForKey: @"Pattern"]] : _pattern;
		_range = [dic objectForKey: @"Range"] != nil ? [[MSOutlookRecurrenceRange alloc] initWithDictionary: [dic objectForKey: @"Range"]] : _range;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.pattern toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"Pattern"];}
	{id curVal = [self.range toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"Range"];}
    [dic setValue: @"#Microsoft.OutlookServices.PatternedRecurrence" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.pattern;
    if([self.updatedValues containsObject:@"Pattern"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"Pattern"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Pattern"];
            }
        
            }}
	{id curVal = self.range;
    if([self.updatedValues containsObject:@"Range"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"Range"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Range"];
            }
        
            }}
    return dic;
}


/** Setter implementation for property pattern
 *
 */
- (void) setPattern: (MSOutlookRecurrencePattern *) value {
    _pattern = value;
    [self valueChangedFor:@"Pattern"];
}
       
/** Setter implementation for property range
 *
 */
- (void) setRange: (MSOutlookRecurrenceRange *) value {
    _range = value;
    [self valueChangedFor:@"Range"];
}
       

@end
