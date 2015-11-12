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


#ifndef MSONENOTEUSERCOLLECTIONFETCHER_H
#define MSONENOTEUSERCOLLECTIONFETCHER_H

@class MSOneNoteUserFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "MSOneNoteModels.h"

/** MSOneNoteUserCollectionFetcher
 *
 */
@interface MSOneNoteUserCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSOneNoteUserFetcher *)getById: (id) identifier;
- (void)add:(MSOneNoteUser *)entity callback:(void (^)(MSOneNoteUser *, MSOrcError *))callback;

- (MSOneNoteUserCollectionFetcher *)select:(NSString *)params;
- (MSOneNoteUserCollectionFetcher *)filter:(NSString *)params;
- (MSOneNoteUserCollectionFetcher *)search:(NSString *)params;
- (MSOneNoteUserCollectionFetcher *)top:(int)value;
- (MSOneNoteUserCollectionFetcher *)skip:(int)value;
- (MSOneNoteUserCollectionFetcher *)expand:(NSString *)value;
- (MSOneNoteUserCollectionFetcher *)orderBy:(NSString *)params;
- (MSOneNoteUserCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOneNoteUserCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
