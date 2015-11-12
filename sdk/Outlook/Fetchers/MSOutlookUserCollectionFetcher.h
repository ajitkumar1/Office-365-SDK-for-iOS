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


#ifndef MSOUTLOOKUSERCOLLECTIONFETCHER_H
#define MSOUTLOOKUSERCOLLECTIONFETCHER_H

@class MSOutlookUserFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "MSOutlookModels.h"

/** MSOutlookUserCollectionFetcher
 *
 */
@interface MSOutlookUserCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSOutlookUserFetcher *)getById: (id) identifier;
- (void)add:(MSOutlookUser *)entity callback:(void (^)(MSOutlookUser *, MSOrcError *))callback;

- (MSOutlookUserCollectionFetcher *)select:(NSString *)params;
- (MSOutlookUserCollectionFetcher *)filter:(NSString *)params;
- (MSOutlookUserCollectionFetcher *)search:(NSString *)params;
- (MSOutlookUserCollectionFetcher *)top:(int)value;
- (MSOutlookUserCollectionFetcher *)skip:(int)value;
- (MSOutlookUserCollectionFetcher *)expand:(NSString *)value;
- (MSOutlookUserCollectionFetcher *)orderBy:(NSString *)params;
- (MSOutlookUserCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOutlookUserCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
