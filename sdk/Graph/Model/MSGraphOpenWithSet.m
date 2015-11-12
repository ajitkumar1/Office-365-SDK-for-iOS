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


/** Implementation for MSGraphOpenWithSet
 *
 */
@implementation MSGraphOpenWithSet


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"web", @"web", @"webEmbedded", @"webEmbedded", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.openWithSet";

        
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_web = [dic objectForKey: @"web"] != nil ? [[MSGraphOpenWithApp alloc] initWithDictionary: [dic objectForKey: @"web"]] : _web;
		_webEmbedded = [dic objectForKey: @"webEmbedded"] != nil ? [[MSGraphOpenWithApp alloc] initWithDictionary: [dic objectForKey: @"webEmbedded"]] : _webEmbedded;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.web toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"web"];}
	{id curVal = [self.webEmbedded toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"webEmbedded"];}
    [dic setValue: @"#Microsoft.Graph.openWithSet" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.web;
    if([self.updatedValues containsObject:@"web"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"web"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"web"];
            }
        
            }}
	{id curVal = self.webEmbedded;
    if([self.updatedValues containsObject:@"webEmbedded"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"webEmbedded"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"webEmbedded"];
            }
        
            }}
    return dic;
}


/** Setter implementation for property web
 *
 */
- (void) setWeb: (MSGraphOpenWithApp *) value {
    _web = value;
    [self valueChangedFor:@"web"];
}
       
/** Setter implementation for property webEmbedded
 *
 */
- (void) setWebEmbedded: (MSGraphOpenWithApp *) value {
    _webEmbedded = value;
    [self valueChangedFor:@"webEmbedded"];
}
       

@end
