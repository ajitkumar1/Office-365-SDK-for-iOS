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



#import "MSFilesModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSFilesItemReference
 *
 */
@implementation MSFilesItemReference


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"driveId", @"driveId", @"id", @"_id", @"path", @"path", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.FileServices.ItemReference";

        
    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_driveId = [dic objectForKey: @"driveId"] != nil ? [[dic objectForKey: @"driveId"] copy] : _driveId;
		__id = [dic objectForKey: @"id"] != nil ? [[dic objectForKey: @"id"] copy] : __id;
		_path = [dic objectForKey: @"path"] != nil ? [[dic objectForKey: @"path"] copy] : _path;

    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys: 
    		 [_driveId copy], @"driveId",
		 [__id copy], @"id",
		 [_path copy], @"path",
            nil];
}


/** Setter implementation for property driveId
 *
 */
- (void) setDriveId: (NSString *) value {
    _driveId = value;
    [self valueChangedFor:@"driveId"];
}
       
/** Setter implementation for property _id
 *
 */
- (void) setId: (NSString *) value {
    __id = value;
    [self valueChangedFor:@"id"];
}
       
/** Setter implementation for property path
 *
 */
- (void) setPath: (NSString *) value {
    _path = value;
    [self valueChangedFor:@"path"];
}
       

@end
