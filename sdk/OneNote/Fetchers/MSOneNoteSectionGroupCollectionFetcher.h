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


#ifndef MSONENOTESECTIONGROUPCOLLECTIONFETCHER_H
#define MSONENOTESECTIONGROUPCOLLECTIONFETCHER_H

@class MSOneNoteSectionGroupFetcher;



#import <orc.h>
#import "MSOneNoteModels.h"

/** MSOneNoteSectionGroupCollectionFetcher
 *
 */
@interface MSOneNoteSectionGroupCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSOneNoteSectionGroupFetcher *)getById: (id) identifier;
- (void)add:(MSOneNoteSectionGroup *)entity callback:(void (^)(MSOneNoteSectionGroup *, MSOrcError *))callback;

- (MSOneNoteSectionGroupCollectionFetcher *)select:(NSString *)params;
- (MSOneNoteSectionGroupCollectionFetcher *)filter:(NSString *)params;
- (MSOneNoteSectionGroupCollectionFetcher *)search:(NSString *)params;
- (MSOneNoteSectionGroupCollectionFetcher *)top:(int)value;
- (MSOneNoteSectionGroupCollectionFetcher *)skip:(int)value;
- (MSOneNoteSectionGroupCollectionFetcher *)expand:(NSString *)value;
- (MSOneNoteSectionGroupCollectionFetcher *)orderBy:(NSString *)params;
- (MSOneNoteSectionGroupCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOneNoteSectionGroupCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
