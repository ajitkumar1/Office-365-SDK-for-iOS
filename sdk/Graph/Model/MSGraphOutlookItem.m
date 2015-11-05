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



#import "MSGraphModels.h"



/** Implementation for MSGraphOutlookItem
 *
 */
@implementation MSGraphOutlookItem


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"CreatedDateTime", @"createdDateTime", @"LastModifiedDateTime", @"lastModifiedDateTime", @"ChangeKey", @"changeKey", @"Categories", @"categories", @"Id", @"_id", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.OutlookItem";
        
        
		_categories = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_createdDateTime = [dic objectForKey: @"CreatedDateTime"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"CreatedDateTime"]] : _createdDateTime;
		_lastModifiedDateTime = [dic objectForKey: @"LastModifiedDateTime"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"LastModifiedDateTime"]] : _lastModifiedDateTime;
		_changeKey = [dic objectForKey: @"ChangeKey"] != nil ? [[dic objectForKey: @"ChangeKey"] copy] : _changeKey;

        if([dic objectForKey: @"Categories"] != [NSNull null]){
            _categories = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"Categories"] count]];
            
            for (id object in [dic objectForKey: @"Categories"]) {
                [_categories addObject:[object copy]];
            }
        }
        

    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys: 
    		 [MSOrcObjectizer stringFromDate:_createdDateTime], @"CreatedDateTime",
		 [MSOrcObjectizer stringFromDate:_lastModifiedDateTime], @"LastModifiedDateTime",
		 [_changeKey copy], @"ChangeKey",
		 [[NSMutableArray alloc] init], @"Categories",
            nil];
}


/** Setter implementation for property createdDateTime
 *
 */
- (void) setCreatedDateTime: (NSDate *) value {
    _createdDateTime = value;
    [self valueChangedFor:@"CreatedDateTime"];
}
       
/** Setter implementation for property lastModifiedDateTime
 *
 */
- (void) setLastModifiedDateTime: (NSDate *) value {
    _lastModifiedDateTime = value;
    [self valueChangedFor:@"LastModifiedDateTime"];
}
       
/** Setter implementation for property changeKey
 *
 */
- (void) setChangeKey: (NSString *) value {
    _changeKey = value;
    [self valueChangedFor:@"ChangeKey"];
}
       
/** Setter implementation for property categories
 *
 */
- (void) setCategories: (NSMutableArray *) value {
    _categories = value;
    [self valueChangedFor:@"Categories"];
}
       

@end
