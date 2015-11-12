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



#ifndef MSDIRECTORYSERVICESPROVISIONINGERROR_H
#define MSDIRECTORYSERVICESPROVISIONINGERROR_H

#import <Foundation/Foundation.h>

#import "core/MSOrcBaseEntity.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSDirectoryServicesProvisioningError
 *
 */
@interface MSDirectoryServicesProvisioningError : MSOrcBaseEntity <MSOrcInteroperableWithDictionary>

/** Property errorDetail
 *
 */
@property (nonatomic,  copy, setter=setErrorDetail:, getter=errorDetail) NSString * errorDetail;

/** Property resolved
 *
 */
@property (nonatomic,  setter=setResolved:, getter=resolved) bool resolved;

/** Property service
 *
 */
@property (nonatomic,  copy, setter=setService:, getter=service) NSString * service;

/** Property timestamp
 *
 */
@property (nonatomic,  copy, setter=setTimestamp:, getter=timestamp) NSDate * timestamp;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
