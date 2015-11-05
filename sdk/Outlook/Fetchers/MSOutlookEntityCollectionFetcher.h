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


#ifndef MSOUTLOOKENTITYCOLLECTIONFETCHER_H
#define MSOUTLOOKENTITYCOLLECTIONFETCHER_H

@class MSOutlookEntityFetcher;



#import <orc.h>
#import "MSOutlookModels.h"

/** MSOutlookEntityCollectionFetcher
 *
 */
@interface MSOutlookEntityCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSOutlookEntityFetcher *)getById: (id) identifier;
- (void)add:(MSOutlookEntity *)entity callback:(void (^)(MSOutlookEntity *, MSOrcError *))callback;

- (MSOutlookEntityCollectionFetcher *)select:(NSString *)params;
- (MSOutlookEntityCollectionFetcher *)filter:(NSString *)params;
- (MSOutlookEntityCollectionFetcher *)search:(NSString *)params;
- (MSOutlookEntityCollectionFetcher *)top:(int)value;
- (MSOutlookEntityCollectionFetcher *)skip:(int)value;
- (MSOutlookEntityCollectionFetcher *)expand:(NSString *)value;
- (MSOutlookEntityCollectionFetcher *)orderBy:(NSString *)params;
- (MSOutlookEntityCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOutlookEntityCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
