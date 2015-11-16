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


#ifndef MSONENOTEAPIGROUPCOLLECTIONFETCHER_H
#define MSONENOTEAPIGROUPCOLLECTIONFETCHER_H

@class MSOneNoteApiGroupFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSOneNoteApiModels.h"

/** MSOneNoteApiGroupCollectionFetcher
 *
 */
@interface MSOneNoteApiGroupCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback;

- (MSOneNoteApiGroupFetcher *)getById: (id) identifier;
- (void)add:(MSOneNoteApiGroup *)entity callback:(void (^)(MSOneNoteApiGroup *, MSOrcError *))callback;

- (MSOneNoteApiGroupCollectionFetcher *)select:(NSString *)params;
- (MSOneNoteApiGroupCollectionFetcher *)filter:(NSString *)params;
- (MSOneNoteApiGroupCollectionFetcher *)search:(NSString *)params;
- (MSOneNoteApiGroupCollectionFetcher *)top:(int)value;
- (MSOneNoteApiGroupCollectionFetcher *)skip:(int)value;
- (MSOneNoteApiGroupCollectionFetcher *)expand:(NSString *)value;
- (MSOneNoteApiGroupCollectionFetcher *)orderBy:(NSString *)params;
- (MSOneNoteApiGroupCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOneNoteApiGroupCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
