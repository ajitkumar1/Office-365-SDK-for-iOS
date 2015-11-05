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


#ifndef MSONENOTEMYORGANIZATION_H
#define MSONENOTEMYORGANIZATION_H

#import <Foundation/Foundation.h>
#import "core/MSOrcObjectizer.h"

@class MSOneNoteSiteCollection;
@class MSOneNoteGroup;
#import "MSOrcBaseEntity.h"
#import <api/MSOrcInteroperableWithDictionary.h>

/** Interface MSOneNoteMyOrganization
 *
 */
@interface MSOneNoteMyOrganization : MSOrcBaseEntity <MSOrcInteroperableWithDictionary>

/** Property _id
 *
 */
@property (nonatomic,  copy, setter=setId:, getter=_id) NSString * _id;

/** Property siteCollections
 *
 */
@property (nonatomic,  copy, setter=setSiteCollections:, getter=siteCollections) NSMutableArray * siteCollections;

/** Property groups
 *
 */
@property (nonatomic,  copy, setter=setGroups:, getter=groups) NSMutableArray * groups;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
