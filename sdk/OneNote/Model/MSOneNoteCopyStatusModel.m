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



#import "MSOneNoteModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSOneNoteCopyStatusModel
 *
 */
@implementation MSOneNoteCopyStatusModel


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"id", @"_id", @"status", @"status", @"createdDateTime", @"createdDateTime", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OneNote.Api.CopyStatusModel";

        
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		__id = [dic objectForKey: @"id"] != nil ? [[dic objectForKey: @"id"] copy] : __id;
		_status = [dic objectForKey: @"status"] != nil ? [[dic objectForKey: @"status"] copy] : _status;
		_createdDateTime = [dic objectForKey: @"createdDateTime"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"createdDateTime"]] : _createdDateTime;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self._id copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
	{id curVal = [self.status copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"status"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.createdDateTime]; if (curVal!=nil) [dic setValue: curVal forKey: @"createdDateTime"];}
    [dic setValue: @"#Microsoft.OneNote.Api.CopyStatusModel" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
    }
    }
	{id curVal = self.status;
    if([self.updatedValues containsObject:@"status"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"status"];
    }
    }
	{id curVal = self.createdDateTime;
    if([self.updatedValues containsObject:@"createdDateTime"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"createdDateTime"];
    }
    }
    return dic;
}


/** Setter implementation for property _id
 *
 */
- (void) setId: (NSString *) value {
    __id = value;
    [self valueChangedFor:@"id"];
}
       
/** Setter implementation for property status
 *
 */
- (void) setStatus: (NSString *) value {
    _status = value;
    [self valueChangedFor:@"status"];
}
       
/** Setter implementation for property createdDateTime
 *
 */
- (void) setCreatedDateTime: (NSDate *) value {
    _createdDateTime = value;
    [self valueChangedFor:@"createdDateTime"];
}
       

@end
