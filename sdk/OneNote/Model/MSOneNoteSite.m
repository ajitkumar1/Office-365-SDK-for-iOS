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



/** Implementation for MSOneNoteSite
 *
 */
@implementation MSOneNoteSite


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"id", @"_id", @"notes", @"notes", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OneNote.Api.Site";
        
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		__id = [dic objectForKey: @"id"] != nil ? [[dic objectForKey: @"id"] copy] : __id;
		_notes = [dic objectForKey: @"notes"] != nil ? [[MSOneNoteNotes alloc] initWithDictionary: [dic objectForKey: @"notes"]] : _notes;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self._id copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
	{id curVal = [self.notes toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"notes"];}
    [dic setValue: @"#Microsoft.OneNote.Api.Site" forKey: @"@odata.type"];

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
	{id curVal = self.notes;
    if([self.updatedValues containsObject:@"notes"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"notes"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"notes"];
            }
        
            }}
    return dic;
}


/** Setter implementation for property _id
 *
 */
- (void) setId: (NSString *) value {
    __id = value;
    [self valueChangedFor:@"id"];
}
       
/** Setter implementation for property notes
 *
 */
- (void) setNotes: (MSOneNoteNotes *) value {
    _notes = value;
    [self valueChangedFor:@"notes"];
}
       

@end
