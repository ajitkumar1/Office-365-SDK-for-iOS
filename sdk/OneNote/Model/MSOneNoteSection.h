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


#ifndef MSONENOTESECTION_H
#define MSONENOTESECTION_H

#import <Foundation/Foundation.h>
#import "core/MSOrcObjectizer.h"

@class MSOneNoteIdentitySet;
@class MSOneNoteNotebook;
@class MSOneNoteSectionGroup;
@class MSOneNotePage;
#import "core/MSOrcBaseEntity.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSOneNoteSection
 *
 */
@interface MSOneNoteSection : MSOrcBaseEntity <MSOrcInteroperableWithDictionary>

/** Property isDefault
 *
 */
@property (nonatomic,  setter=setIsDefault:, getter=isDefault) bool isDefault;

/** Property pagesUrl
 *
 */
@property (nonatomic,  copy, setter=setPagesUrl:, getter=pagesUrl) NSString * pagesUrl;

/** Property name
 *
 */
@property (nonatomic,  copy, setter=setName:, getter=name) NSString * name;

/** Property createdBy
 *
 */
@property (nonatomic,  copy, setter=setCreatedBy:, getter=createdBy) NSString * createdBy;

/** Property createdByUser
 *
 */
@property (nonatomic,  copy, setter=setCreatedByUser:, getter=createdByUser) MSOneNoteIdentitySet * createdByUser;

/** Property lastModifiedBy
 *
 */
@property (nonatomic,  copy, setter=setLastModifiedBy:, getter=lastModifiedBy) NSString * lastModifiedBy;

/** Property lastModifiedByUser
 *
 */
@property (nonatomic,  copy, setter=setLastModifiedByUser:, getter=lastModifiedByUser) MSOneNoteIdentitySet * lastModifiedByUser;

/** Property lastModifiedTime
 *
 */
@property (nonatomic,  copy, setter=setLastModifiedTime:, getter=lastModifiedTime) NSDate * lastModifiedTime;

/** Property _id
 *
 */
@property (nonatomic,  copy, setter=setId:, getter=_id) NSString * _id;

/** Property _self
 *
 */
@property (nonatomic,  copy, setter=setSelf:, getter=_self) NSString * _self;

/** Property createdTime
 *
 */
@property (nonatomic,  copy, setter=setCreatedTime:, getter=createdTime) NSDate * createdTime;

/** Property parentNotebook
 *
 */
@property (nonatomic,  copy, setter=setParentNotebook:, getter=parentNotebook) MSOneNoteNotebook * parentNotebook;

/** Property parentSectionGroup
 *
 */
@property (nonatomic,  copy, setter=setParentSectionGroup:, getter=parentSectionGroup) MSOneNoteSectionGroup * parentSectionGroup;

/** Property pages
 *
 */
@property (nonatomic,  copy, setter=setPages:, getter=pages) NSMutableArray * pages;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
