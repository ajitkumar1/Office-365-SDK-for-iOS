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
#import "core/MSOrcObjectizer.h"


/** Implementation for MSGraphSearchResult
 *
 */
@implementation MSGraphSearchResult


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"onClickTelemetryUrl", @"onClickTelemetryUrl", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.searchResult";

        
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_onClickTelemetryUrl = [dic objectForKey: @"onClickTelemetryUrl"] != nil ? [[dic objectForKey: @"onClickTelemetryUrl"] copy] : _onClickTelemetryUrl;

    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys: 
    		 [_onClickTelemetryUrl copy], @"onClickTelemetryUrl",
            nil];
}


/** Setter implementation for property onClickTelemetryUrl
 *
 */
- (void) setOnClickTelemetryUrl: (NSString *) value {
    _onClickTelemetryUrl = value;
    [self valueChangedFor:@"onClickTelemetryUrl"];
}
       

@end
