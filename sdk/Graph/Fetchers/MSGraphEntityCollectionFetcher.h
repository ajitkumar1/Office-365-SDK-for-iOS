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


#ifndef MSGRAPHENTITYCOLLECTIONFETCHER_H
#define MSGRAPHENTITYCOLLECTIONFETCHER_H

@class MSGraphEntityFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "MSGraphModels.h"

/** MSGraphEntityCollectionFetcher
 *
 */
@interface MSGraphEntityCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSGraphEntityFetcher *)getById: (id) identifier;
- (void)add:(MSGraphEntity *)entity callback:(void (^)(MSGraphEntity *, MSOrcError *))callback;

- (MSGraphEntityCollectionFetcher *)select:(NSString *)params;
- (MSGraphEntityCollectionFetcher *)filter:(NSString *)params;
- (MSGraphEntityCollectionFetcher *)search:(NSString *)params;
- (MSGraphEntityCollectionFetcher *)top:(int)value;
- (MSGraphEntityCollectionFetcher *)skip:(int)value;
- (MSGraphEntityCollectionFetcher *)expand:(NSString *)value;
- (MSGraphEntityCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphEntityCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphEntityCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
