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


#ifndef MSGRAPHATTACHMENTCOLLECTIONFETCHER_H
#define MSGRAPHATTACHMENTCOLLECTIONFETCHER_H

@class MSGraphAttachmentFetcher;



#import <orc.h>
#import "MSGraphModels.h"

/** MSGraphAttachmentCollectionFetcher
 *
 */
@interface MSGraphAttachmentCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSGraphAttachmentFetcher *)getById: (id) identifier;
- (void)add:(MSGraphAttachment *)entity callback:(void (^)(MSGraphAttachment *, MSOrcError *))callback;

- (MSGraphAttachmentCollectionFetcher *)select:(NSString *)params;
- (MSGraphAttachmentCollectionFetcher *)filter:(NSString *)params;
- (MSGraphAttachmentCollectionFetcher *)search:(NSString *)params;
- (MSGraphAttachmentCollectionFetcher *)top:(int)value;
- (MSGraphAttachmentCollectionFetcher *)skip:(int)value;
- (MSGraphAttachmentCollectionFetcher *)expand:(NSString *)value;
- (MSGraphAttachmentCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphAttachmentCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphAttachmentCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
