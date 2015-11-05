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


#ifndef MSGRAPHITEMATTACHMENTCOLLECTIONFETCHER_H
#define MSGRAPHITEMATTACHMENTCOLLECTIONFETCHER_H

@class MSGraphItemAttachmentFetcher;



#import <orc.h>
#import "MSGraphModels.h"

/** MSGraphItemAttachmentCollectionFetcher
 *
 */
@interface MSGraphItemAttachmentCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSGraphItemAttachmentFetcher *)getById: (id) identifier;
- (void)add:(MSGraphItemAttachment *)entity callback:(void (^)(MSGraphItemAttachment *, MSOrcError *))callback;

- (MSGraphItemAttachmentCollectionFetcher *)select:(NSString *)params;
- (MSGraphItemAttachmentCollectionFetcher *)filter:(NSString *)params;
- (MSGraphItemAttachmentCollectionFetcher *)search:(NSString *)params;
- (MSGraphItemAttachmentCollectionFetcher *)top:(int)value;
- (MSGraphItemAttachmentCollectionFetcher *)skip:(int)value;
- (MSGraphItemAttachmentCollectionFetcher *)expand:(NSString *)value;
- (MSGraphItemAttachmentCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphItemAttachmentCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphItemAttachmentCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
