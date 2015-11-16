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


#ifndef MSONENOTEAPIOPERATION_H
#define MSONENOTEAPIOPERATION_H

#import <Foundation/Foundation.h>
#import "core/MSOrcChangesTrackingArray.h"

@class MSOneNoteApiOperationError;
#import "core/MSOrcBaseEntity.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSOneNoteApiOperation
 *
 */
@interface MSOneNoteApiOperation : MSOrcBaseEntity <MSOrcInteroperableWithDictionary>

/** Property _id
 *
 */
@property (nonatomic,  copy, setter=setId:, getter=_id) NSString * _id;

/** Property status
 *
 */
@property (nonatomic,  copy, setter=setStatus:, getter=status) NSString * status;

/** Property createdDateTime
 *
 */
@property (nonatomic,  copy, setter=setCreatedDateTime:, getter=createdDateTime) NSDate * createdDateTime;

/** Property lastActionDateTime
 *
 */
@property (nonatomic,  copy, setter=setLastActionDateTime:, getter=lastActionDateTime) NSDate * lastActionDateTime;

/** Property resourceLocation
 *
 */
@property (nonatomic,  copy, setter=setResourceLocation:, getter=resourceLocation) NSString * resourceLocation;

/** Property resourceId
 *
 */
@property (nonatomic,  copy, setter=setResourceId:, getter=resourceId) NSString * resourceId;

/** Property error
 *
 */
@property (nonatomic,  copy, setter=setError:, getter=error) MSOneNoteApiOperationError * error;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
