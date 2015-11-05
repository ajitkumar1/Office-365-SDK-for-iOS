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


#ifndef MSGRAPHPOSTCOLLECTIONFETCHER_H
#define MSGRAPHPOSTCOLLECTIONFETCHER_H

@class MSGraphPostFetcher;



#import <orc.h>
#import "MSGraphModels.h"

/** MSGraphPostCollectionFetcher
 *
 */
@interface MSGraphPostCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSGraphPostFetcher *)getById: (id) identifier;
- (void)add:(MSGraphPost *)entity callback:(void (^)(MSGraphPost *, MSOrcError *))callback;

- (MSGraphPostCollectionFetcher *)select:(NSString *)params;
- (MSGraphPostCollectionFetcher *)filter:(NSString *)params;
- (MSGraphPostCollectionFetcher *)search:(NSString *)params;
- (MSGraphPostCollectionFetcher *)top:(int)value;
- (MSGraphPostCollectionFetcher *)skip:(int)value;
- (MSGraphPostCollectionFetcher *)expand:(NSString *)value;
- (MSGraphPostCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphPostCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphPostCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
