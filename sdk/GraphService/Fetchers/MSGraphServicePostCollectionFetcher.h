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


#ifndef MSGRAPHSERVICEPOSTCOLLECTIONFETCHER_H
#define MSGRAPHSERVICEPOSTCOLLECTIONFETCHER_H

@class MSGraphServicePostFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSGraphServiceModels.h"

/** MSGraphServicePostCollectionFetcher
 *
 */
@interface MSGraphServicePostCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback;

- (MSGraphServicePostFetcher *)getById: (id) identifier;
- (void)add:(MSGraphServicePost *)entity callback:(void (^)(MSGraphServicePost *, MSOrcError *))callback;

- (MSGraphServicePostCollectionFetcher *)select:(NSString *)params;
- (MSGraphServicePostCollectionFetcher *)filter:(NSString *)params;
- (MSGraphServicePostCollectionFetcher *)search:(NSString *)params;
- (MSGraphServicePostCollectionFetcher *)top:(int)value;
- (MSGraphServicePostCollectionFetcher *)skip:(int)value;
- (MSGraphServicePostCollectionFetcher *)expand:(NSString *)value;
- (MSGraphServicePostCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphServicePostCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphServicePostCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
