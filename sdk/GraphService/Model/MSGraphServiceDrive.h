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


#ifndef MSGRAPHSERVICEDRIVE_H
#define MSGRAPHSERVICEDRIVE_H

#import <Foundation/Foundation.h>
#import "core/MSOrcChangesTrackingArray.h"

@class MSGraphServiceIdentitySet;
@class MSGraphServiceQuota;
@class MSGraphServiceDriveItem;
#import "MSGraphServiceEntity.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSGraphServiceDrive
 *
 */
@interface MSGraphServiceDrive : MSGraphServiceEntity <MSOrcInteroperableWithDictionary>

/** Property driveType
 *
 */
@property (nonatomic,  copy, setter=setDriveType:, getter=driveType) NSString * driveType;

/** Property owner
 *
 */
@property (nonatomic,  copy, setter=setOwner:, getter=owner) MSGraphServiceIdentitySet * owner;

/** Property quota
 *
 */
@property (nonatomic,  copy, setter=setQuota:, getter=quota) MSGraphServiceQuota * quota;

/** Property items
 *
 */
@property (nonatomic,  copy, setter=setItems:, getter=items) NSMutableArray * items;

/** Property shared
 *
 */
@property (nonatomic,  copy, setter=setShared:, getter=shared) NSMutableArray * shared;

/** Property special
 *
 */
@property (nonatomic,  copy, setter=setSpecial:, getter=special) NSMutableArray * special;

/** Property root
 *
 */
@property (nonatomic,  copy, setter=setRoot:, getter=root) MSGraphServiceDriveItem * root;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
