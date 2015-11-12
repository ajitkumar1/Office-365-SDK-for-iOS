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


/** Implementation for MSGraphPasswordProfile
 *
 */
@implementation MSGraphPasswordProfile


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"password", @"password", @"forceChangePasswordNextLogin", @"forceChangePasswordNextLogin", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.PasswordProfile";

        
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_password = [dic objectForKey: @"password"] != nil ? [[dic objectForKey: @"password"] copy] : _password;
		_forceChangePasswordNextLogin = [dic objectForKey: @"forceChangePasswordNextLogin"] != nil ? [[dic objectForKey: @"forceChangePasswordNextLogin"] boolValue] : _forceChangePasswordNextLogin;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.password copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"password"];}
	{id curVal = (self.forceChangePasswordNextLogin?@"true":@"false"); if (curVal!=nil) [dic setValue: curVal forKey: @"forceChangePasswordNextLogin"];}
    [dic setValue: @"#Microsoft.Graph.PasswordProfile" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.password;
    if([self.updatedValues containsObject:@"password"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"password"];
    }
    }
	{id curVal = self.forceChangePasswordNextLogin;
    if([self.updatedValues containsObject:@"forceChangePasswordNextLogin"])
    {
        [dic setValue: curVal==nil?[NSNull null]:(curVal?@"true":@"false") forKey: @"forceChangePasswordNextLogin"];
    }
    }
    return dic;
}


/** Setter implementation for property password
 *
 */
- (void) setPassword: (NSString *) value {
    _password = value;
    [self valueChangedFor:@"password"];
}
       
/** Setter implementation for property forceChangePasswordNextLogin
 *
 */
- (void) setForceChangePasswordNextLogin: (bool) value {
    _forceChangePasswordNextLogin = value;
    [self valueChangedFor:@"forceChangePasswordNextLogin"];
}
       

@end
