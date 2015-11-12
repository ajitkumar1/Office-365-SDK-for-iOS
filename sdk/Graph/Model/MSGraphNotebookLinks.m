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


/** Implementation for MSGraphNotebookLinks
 *
 */
@implementation MSGraphNotebookLinks


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"oneNoteClientUrl", @"oneNoteClientUrl", @"oneNoteWebUrl", @"oneNoteWebUrl", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.NotebookLinks";

        
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_oneNoteClientUrl = [dic objectForKey: @"oneNoteClientUrl"] != nil ? [[MSGraphExternalLink alloc] initWithDictionary: [dic objectForKey: @"oneNoteClientUrl"]] : _oneNoteClientUrl;
		_oneNoteWebUrl = [dic objectForKey: @"oneNoteWebUrl"] != nil ? [[MSGraphExternalLink alloc] initWithDictionary: [dic objectForKey: @"oneNoteWebUrl"]] : _oneNoteWebUrl;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.oneNoteClientUrl toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"oneNoteClientUrl"];}
	{id curVal = [self.oneNoteWebUrl toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"oneNoteWebUrl"];}
    [dic setValue: @"#Microsoft.Graph.NotebookLinks" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.oneNoteClientUrl;
    if([self.updatedValues containsObject:@"oneNoteClientUrl"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"oneNoteClientUrl"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"oneNoteClientUrl"];
            }
        
            }}
	{id curVal = self.oneNoteWebUrl;
    if([self.updatedValues containsObject:@"oneNoteWebUrl"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"oneNoteWebUrl"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"oneNoteWebUrl"];
            }
        
            }}
    return dic;
}


/** Setter implementation for property oneNoteClientUrl
 *
 */
- (void) setOneNoteClientUrl: (MSGraphExternalLink *) value {
    _oneNoteClientUrl = value;
    [self valueChangedFor:@"oneNoteClientUrl"];
}
       
/** Setter implementation for property oneNoteWebUrl
 *
 */
- (void) setOneNoteWebUrl: (MSGraphExternalLink *) value {
    _oneNoteWebUrl = value;
    [self valueChangedFor:@"oneNoteWebUrl"];
}
       

@end
