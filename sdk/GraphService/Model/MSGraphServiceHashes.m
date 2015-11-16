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



#import "MSGraphServiceModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSGraphServiceHashes
 *
 */
@implementation MSGraphServiceHashes


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 

        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"crc32Hash", @"crc32Hash", @"sha1Hash", @"sha1Hash", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.hashes";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_crc32Hash = (![dic objectForKey: @"crc32Hash"] || [ [dic objectForKey: @"crc32Hash"] isKindOfClass:[NSNull class]] )?_crc32Hash:[[dic objectForKey: @"crc32Hash"] copy];
		_sha1Hash = (![dic objectForKey: @"sha1Hash"] || [ [dic objectForKey: @"sha1Hash"] isKindOfClass:[NSNull class]] )?_sha1Hash:[[dic objectForKey: @"sha1Hash"] copy];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.crc32Hash copy];if (curVal!=nil) [dic setValue: curVal forKey: @"crc32Hash"];}
	{id curVal = [self.sha1Hash copy];if (curVal!=nil) [dic setValue: curVal forKey: @"sha1Hash"];}
    [dic setValue: @"#microsoft.graph.hashes" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.crc32Hash;
    if([self.updatedValues containsObject:@"crc32Hash"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"crc32Hash"];
            }
    }
	{id curVal = self.sha1Hash;
    if([self.updatedValues containsObject:@"sha1Hash"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"sha1Hash"];
            }
    }
    return dic;
}


/** Setter implementation for property crc32Hash
 *
 */
- (void) setCrc32Hash: (NSString *) value {
    _crc32Hash = value;
    [self valueChangedFor:@"crc32Hash"];
}
       
/** Setter implementation for property sha1Hash
 *
 */
- (void) setSha1Hash: (NSString *) value {
    _sha1Hash = value;
    [self valueChangedFor:@"sha1Hash"];
}
       

@end
