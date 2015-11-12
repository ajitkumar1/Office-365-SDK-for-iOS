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


/** Implementation for MSOutlookItemBody
 *
 */
@implementation MSOutlookItemBody


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"ContentType", @"contentType", @"Content", @"content", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.ItemBody";

        
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_contentType = [dic objectForKey: @"ContentType"] != nil ? [MSOutlookBodyTypeSerializer fromString:[dic objectForKey: @"ContentType"]] : _contentType;
		_content = [dic objectForKey: @"Content"] != nil ? [[dic objectForKey: @"Content"] copy] : _content;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [MSOutlookBodyTypeSerializer toString:self.contentType]; if (curVal!=nil) [dic setValue: curVal forKey: @"ContentType"];}
	{id curVal = [self.content copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"Content"];}
    [dic setValue: @"#Microsoft.OutlookServices.ItemBody" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.contentType;
    if([self.updatedValues containsObject:@"ContentType"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOutlookBodyTypeSerializer toString:curVal] forKey: @"ContentType"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"ContentType"];
            }
        
            }}
	{id curVal = self.content;
    if([self.updatedValues containsObject:@"Content"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Content"];
    }
    }
    return dic;
}


/** Setter implementation for property contentType
 *
 */
- (void) setContentType: (MSOutlookBodyType) value {
    _contentType = value;
    [self valueChangedFor:@"ContentType"];
}
       

- (void)setContentTypeString:(NSString *)string {
        
    _contentType = [MSOutlookBodyTypeSerializer fromString:string];
    [self valueChangedFor:@"ContentType"]; 
}

/** Setter implementation for property content
 *
 */
- (void) setContent: (NSString *) value {
    _content = value;
    [self valueChangedFor:@"Content"];
}
       

@end