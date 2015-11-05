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



#ifndef MSDIRECTORYSERVICESLICENSEUNITSDETAIL_H
#define MSDIRECTORYSERVICESLICENSEUNITSDETAIL_H

#import <Foundation/Foundation.h>

#import "MSOrcBaseEntity.h"
#import <api/MSOrcInteroperableWithDictionary.h>

/** Interface MSDirectoryServicesLicenseUnitsDetail
 *
 */
@interface MSDirectoryServicesLicenseUnitsDetail : MSOrcBaseEntity <MSOrcInteroperableWithDictionary>

/** Property enabled
 *
 */
@property (nonatomic,  setter=setEnabled:, getter=enabled) int enabled;

/** Property suspended
 *
 */
@property (nonatomic,  setter=setSuspended:, getter=suspended) int suspended;

/** Property warning
 *
 */
@property (nonatomic,  setter=setWarning:, getter=warning) int warning;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
