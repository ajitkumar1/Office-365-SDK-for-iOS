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


/** Implementation for MSGraphLicenseUnitsDetail
 *
 */
@implementation MSGraphLicenseUnitsDetail


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"enabled", @"enabled", @"suspended", @"suspended", @"warning", @"warning", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.LicenseUnitsDetail";

        
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_enabled = [dic objectForKey: @"enabled"] != nil ? [[dic objectForKey: @"enabled"] intValue] : _enabled;
		_suspended = [dic objectForKey: @"suspended"] != nil ? [[dic objectForKey: @"suspended"] intValue] : _suspended;
		_warning = [dic objectForKey: @"warning"] != nil ? [[dic objectForKey: @"warning"] intValue] : _warning;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [NSNumber numberWithInt: self.enabled]; if (curVal!=nil) [dic setValue: curVal forKey: @"enabled"];}
	{id curVal = [NSNumber numberWithInt: self.suspended]; if (curVal!=nil) [dic setValue: curVal forKey: @"suspended"];}
	{id curVal = [NSNumber numberWithInt: self.warning]; if (curVal!=nil) [dic setValue: curVal forKey: @"warning"];}
    [dic setValue: @"#Microsoft.Graph.LicenseUnitsDetail" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.enabled;
    if([self.updatedValues containsObject:@"enabled"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[NSNumber numberWithInt: curVal] forKey: @"enabled"];
    }
    }
	{id curVal = self.suspended;
    if([self.updatedValues containsObject:@"suspended"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[NSNumber numberWithInt: curVal] forKey: @"suspended"];
    }
    }
	{id curVal = self.warning;
    if([self.updatedValues containsObject:@"warning"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[NSNumber numberWithInt: curVal] forKey: @"warning"];
    }
    }
    return dic;
}


/** Setter implementation for property enabled
 *
 */
- (void) setEnabled: (int) value {
    _enabled = value;
    [self valueChangedFor:@"enabled"];
}
       
/** Setter implementation for property suspended
 *
 */
- (void) setSuspended: (int) value {
    _suspended = value;
    [self valueChangedFor:@"suspended"];
}
       
/** Setter implementation for property warning
 *
 */
- (void) setWarning: (int) value {
    _warning = value;
    [self valueChangedFor:@"warning"];
}
       

@end
