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



#ifndef MSDIRECTORYSERVICESPASSWORDPROFILE_H
#define MSDIRECTORYSERVICESPASSWORDPROFILE_H

#import <Foundation/Foundation.h>

#import "MSOrcBaseEntity.h"
#import <api/MSOrcInteroperableWithDictionary.h>

/** Interface MSDirectoryServicesPasswordProfile
 *
 */
@interface MSDirectoryServicesPasswordProfile : MSOrcBaseEntity <MSOrcInteroperableWithDictionary>

/** Property password
 *
 */
@property (nonatomic,  copy, setter=setPassword:, getter=password) NSString * password;

/** Property forceChangePasswordNextLogin
 *
 */
@property (nonatomic,  setter=setForceChangePasswordNextLogin:, getter=forceChangePasswordNextLogin) bool forceChangePasswordNextLogin;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
