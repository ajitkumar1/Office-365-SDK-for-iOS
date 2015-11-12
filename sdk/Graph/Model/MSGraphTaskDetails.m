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



/** Implementation for MSGraphTaskDetails
 *
 */
@implementation MSGraphTaskDetails


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"description", @"_description", @"previewType", @"previewType", @"completedBy", @"completedBy", @"references", @"references", @"checklist", @"checklist", @"id", @"_id", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.taskDetails";
        
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		__description = [dic objectForKey: @"description"] != nil ? [[dic objectForKey: @"description"] copy] : __description;
		_previewType = [dic objectForKey: @"previewType"] != nil ? [MSGraphPreviewTypeSerializer fromString:[dic objectForKey: @"previewType"]] : _previewType;
		_completedBy = [dic objectForKey: @"completedBy"] != nil ? [[dic objectForKey: @"completedBy"] copy] : _completedBy;
		_references = [dic objectForKey: @"references"] != nil ? [[MSGraphExternalReferenceCollection alloc] initWithDictionary: [dic objectForKey: @"references"]] : _references;
		_checklist = [dic objectForKey: @"checklist"] != nil ? [[MSGraphChecklistItemCollection alloc] initWithDictionary: [dic objectForKey: @"checklist"]] : _checklist;
		__id = [dic objectForKey: @"id"] != nil ? [[dic objectForKey: @"id"] copy] : __id;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self._description copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"description"];}
	{id curVal = [MSGraphPreviewTypeSerializer toString:self.previewType]; if (curVal!=nil) [dic setValue: curVal forKey: @"previewType"];}
	{id curVal = [self.completedBy copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"completedBy"];}
	{id curVal = [self.references toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"references"];}
	{id curVal = [self.checklist toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"checklist"];}
	{id curVal = [self._id copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
    [dic setValue: @"#Microsoft.Graph.taskDetails" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self._description;
    if([self.updatedValues containsObject:@"description"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"description"];
    }
    }
	{id curVal = self.previewType;
    if([self.updatedValues containsObject:@"previewType"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSGraphPreviewTypeSerializer toString:curVal] forKey: @"previewType"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"previewType"];
            }
        
            }}
	{id curVal = self.completedBy;
    if([self.updatedValues containsObject:@"completedBy"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"completedBy"];
    }
    }
	{id curVal = self.references;
    if([self.updatedValues containsObject:@"references"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"references"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"references"];
            }
        
            }}
	{id curVal = self.checklist;
    if([self.updatedValues containsObject:@"checklist"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"checklist"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"checklist"];
            }
        
            }}
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
    }
    }
    return dic;
}


/** Setter implementation for property _description
 *
 */
- (void) setDescription: (NSString *) value {
    __description = value;
    [self valueChangedFor:@"description"];
}
       
/** Setter implementation for property previewType
 *
 */
- (void) setPreviewType: (MSGraphPreviewType) value {
    _previewType = value;
    [self valueChangedFor:@"previewType"];
}
       

- (void)setPreviewTypeString:(NSString *)string {
        
    _previewType = [MSGraphPreviewTypeSerializer fromString:string];
    [self valueChangedFor:@"previewType"]; 
}

/** Setter implementation for property completedBy
 *
 */
- (void) setCompletedBy: (NSString *) value {
    _completedBy = value;
    [self valueChangedFor:@"completedBy"];
}
       
/** Setter implementation for property references
 *
 */
- (void) setReferences: (MSGraphExternalReferenceCollection *) value {
    _references = value;
    [self valueChangedFor:@"references"];
}
       
/** Setter implementation for property checklist
 *
 */
- (void) setChecklist: (MSGraphChecklistItemCollection *) value {
    _checklist = value;
    [self valueChangedFor:@"checklist"];
}
       
/** Setter implementation for property _id
 *
 */
- (void) setId: (NSString *) value {
    __id = value;
    [self valueChangedFor:@"id"];
}
       

@end
