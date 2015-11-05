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



/** Implementation for MSGraphInferenceClassification
 *
 */
@implementation MSGraphInferenceClassification


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"Overrides", @"overrides", @"Id", @"_id", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.InferenceClassification";
        
        
		_overrides = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    

        if([dic objectForKey: @"Overrides"] != [NSNull null]){
            _overrides = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"Overrides"] count]];
            
            for (id object in [dic objectForKey: @"Overrides"]) {
                [_overrides addObject:[[MSGraphInferenceClassificationOverride alloc] initWithDictionary: object]];
            }
        }
        

    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys: 
    		 [[NSMutableArray alloc] init], @"Overrides",
            nil];
}


/** Setter implementation for property overrides
 *
 */
- (void) setOverrides: (NSMutableArray *) value {
    _overrides = value;
    [self valueChangedFor:@"Overrides"];
}
       

@end
