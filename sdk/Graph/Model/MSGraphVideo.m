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


/** Implementation for MSGraphVideo
 *
 */
@implementation MSGraphVideo


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"bitrate", @"bitrate", @"duration", @"duration", @"height", @"height", @"width", @"width", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.video";

        
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_bitrate = [dic objectForKey: @"bitrate"] != nil ? [[dic objectForKey: @"bitrate"] intValue] : _bitrate;
		_duration = [dic objectForKey: @"duration"] != nil ? [[dic objectForKey: @"duration"] longLongValue] : _duration;
		_height = [dic objectForKey: @"height"] != nil ? [[dic objectForKey: @"height"] intValue] : _height;
		_width = [dic objectForKey: @"width"] != nil ? [[dic objectForKey: @"width"] intValue] : _width;

    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys: 
    		 [NSNumber numberWithInt: _bitrate], @"bitrate",
		 [NSNumber numberWithLongLong: _duration], @"duration",
		 [NSNumber numberWithInt: _height], @"height",
		 [NSNumber numberWithInt: _width], @"width",
            nil];
}


/** Setter implementation for property bitrate
 *
 */
- (void) setBitrate: (int) value {
    _bitrate = value;
    [self valueChangedFor:@"bitrate"];
}
       
/** Setter implementation for property duration
 *
 */
- (void) setDuration: (long long) value {
    _duration = value;
    [self valueChangedFor:@"duration"];
}
       
/** Setter implementation for property height
 *
 */
- (void) setHeight: (int) value {
    _height = value;
    [self valueChangedFor:@"height"];
}
       
/** Setter implementation for property width
 *
 */
- (void) setWidth: (int) value {
    _width = value;
    [self valueChangedFor:@"width"];
}
       

@end
