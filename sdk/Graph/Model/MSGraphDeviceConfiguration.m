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



/** Implementation for MSGraphDeviceConfiguration
 *
 */
@implementation MSGraphDeviceConfiguration


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"publicIssuerCertificates", @"publicIssuerCertificates", @"cloudPublicIssuerCertificates", @"cloudPublicIssuerCertificates", @"registrationQuota", @"registrationQuota", @"maximumRegistrationInactivityPeriod", @"maximumRegistrationInactivityPeriod", @"objectType", @"objectType", @"objectId", @"objectId", @"deletionTimestamp", @"deletionTimestamp", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.DeviceConfiguration";
        
        
		_publicIssuerCertificates = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_cloudPublicIssuerCertificates = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    

        if([dic objectForKey: @"publicIssuerCertificates"] != [NSNull null]){
            _publicIssuerCertificates = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"publicIssuerCertificates"] count]];
            
            for (id object in [dic objectForKey: @"publicIssuerCertificates"]) {
                [_publicIssuerCertificates addObject:[MSOrcObjectizer dataFromString:object]];
            }
        }
        

        if([dic objectForKey: @"cloudPublicIssuerCertificates"] != [NSNull null]){
            _cloudPublicIssuerCertificates = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"cloudPublicIssuerCertificates"] count]];
            
            for (id object in [dic objectForKey: @"cloudPublicIssuerCertificates"]) {
                [_cloudPublicIssuerCertificates addObject:[MSOrcObjectizer dataFromString:object]];
            }
        }
        
		_registrationQuota = [dic objectForKey: @"registrationQuota"] != nil ? [[dic objectForKey: @"registrationQuota"] intValue] : _registrationQuota;
		_maximumRegistrationInactivityPeriod = [dic objectForKey: @"maximumRegistrationInactivityPeriod"] != nil ? [[dic objectForKey: @"maximumRegistrationInactivityPeriod"] intValue] : _maximumRegistrationInactivityPeriod;

    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys: 
    		 [[NSMutableArray alloc] init], @"publicIssuerCertificates",
		 [[NSMutableArray alloc] init], @"cloudPublicIssuerCertificates",
		 [NSNumber numberWithInt: _registrationQuota], @"registrationQuota",
		 [NSNumber numberWithInt: _maximumRegistrationInactivityPeriod], @"maximumRegistrationInactivityPeriod",
            nil];
}


/** Setter implementation for property publicIssuerCertificates
 *
 */
- (void) setPublicIssuerCertificates: (NSMutableArray *) value {
    _publicIssuerCertificates = value;
    [self valueChangedFor:@"publicIssuerCertificates"];
}
       
/** Setter implementation for property cloudPublicIssuerCertificates
 *
 */
- (void) setCloudPublicIssuerCertificates: (NSMutableArray *) value {
    _cloudPublicIssuerCertificates = value;
    [self valueChangedFor:@"cloudPublicIssuerCertificates"];
}
       
/** Setter implementation for property registrationQuota
 *
 */
- (void) setRegistrationQuota: (int) value {
    _registrationQuota = value;
    [self valueChangedFor:@"registrationQuota"];
}
       
/** Setter implementation for property maximumRegistrationInactivityPeriod
 *
 */
- (void) setMaximumRegistrationInactivityPeriod: (int) value {
    _maximumRegistrationInactivityPeriod = value;
    [self valueChangedFor:@"maximumRegistrationInactivityPeriod"];
}
       

@end
