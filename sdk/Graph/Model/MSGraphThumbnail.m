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


/** Implementation for MSGraphThumbnail
 *
 */
@implementation MSGraphThumbnail


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"content", @"content", @"height", @"height", @"url", @"url", @"width", @"width", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.thumbnail";

        
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_content = [dic objectForKey: @"content"] != nil ? nil/*NSStream*/ : _content;
		_height = [dic objectForKey: @"height"] != nil ? [[dic objectForKey: @"height"] intValue] : _height;
		_url = [dic objectForKey: @"url"] != nil ? [[dic objectForKey: @"url"] copy] : _url;
		_width = [dic objectForKey: @"width"] != nil ? [[dic objectForKey: @"width"] intValue] : _width;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = nil/*NSStream*/; if (curVal!=nil) [dic setValue: curVal forKey: @"content"];}
	{id curVal = [NSNumber numberWithInt: self.height]; if (curVal!=nil) [dic setValue: curVal forKey: @"height"];}
	{id curVal = [self.url copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"url"];}
	{id curVal = [NSNumber numberWithInt: self.width]; if (curVal!=nil) [dic setValue: curVal forKey: @"width"];}
    [dic setValue: @"#Microsoft.Graph.thumbnail" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.content;
    if([self.updatedValues containsObject:@"content"])
    {
        [dic setValue: curVal==nil?[NSNull null]:nil/*NSStream*/ forKey: @"content"];
    }
    }
	{id curVal = self.height;
    if([self.updatedValues containsObject:@"height"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[NSNumber numberWithInt: curVal] forKey: @"height"];
    }
    }
	{id curVal = self.url;
    if([self.updatedValues containsObject:@"url"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"url"];
    }
    }
	{id curVal = self.width;
    if([self.updatedValues containsObject:@"width"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[NSNumber numberWithInt: curVal] forKey: @"width"];
    }
    }
    return dic;
}


/** Setter implementation for property content
 *
 */
- (void) setContent: (NSStream *) value {
    _content = value;
    [self valueChangedFor:@"content"];
}
       
/** Setter implementation for property height
 *
 */
- (void) setHeight: (int) value {
    _height = value;
    [self valueChangedFor:@"height"];
}
       
/** Setter implementation for property url
 *
 */
- (void) setUrl: (NSString *) value {
    _url = value;
    [self valueChangedFor:@"url"];
}
       
/** Setter implementation for property width
 *
 */
- (void) setWidth: (int) value {
    _width = value;
    [self valueChangedFor:@"width"];
}
       

@end
