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


#ifndef MSOUTLOOKCONVERSATIONCOLLECTIONFETCHER_H
#define MSOUTLOOKCONVERSATIONCOLLECTIONFETCHER_H

@class MSOutlookConversationFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSOutlookModels.h"

/** MSOutlookConversationCollectionFetcher
 *
 */
@interface MSOutlookConversationCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback;

- (MSOutlookConversationFetcher *)getById: (id) identifier;
- (void)add:(MSOutlookConversation *)entity callback:(void (^)(MSOutlookConversation *, MSOrcError *))callback;

- (MSOutlookConversationCollectionFetcher *)select:(NSString *)params;
- (MSOutlookConversationCollectionFetcher *)filter:(NSString *)params;
- (MSOutlookConversationCollectionFetcher *)search:(NSString *)params;
- (MSOutlookConversationCollectionFetcher *)top:(int)value;
- (MSOutlookConversationCollectionFetcher *)skip:(int)value;
- (MSOutlookConversationCollectionFetcher *)expand:(NSString *)value;
- (MSOutlookConversationCollectionFetcher *)orderBy:(NSString *)params;
- (MSOutlookConversationCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOutlookConversationCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
