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



#ifndef MSGRAPHEXTENSIONPROPERTYFETCHER_H
#define MSGRAPHEXTENSIONPROPERTYFETCHER_H

#import "MSGraphModels.h"
#import "api/api.h"
#import "core/MSOrcEntityFetcher.h"

@class MSGraphExtensionPropertyOperations;


/** MSGraphExtensionPropertyFetcher
 *
 */
@interface MSGraphExtensionPropertyFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphExtensionPropertyOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSGraphExtensionProperty *, MSOrcError *))callback;
- (void)update:(MSGraphExtensionProperty *)ExtensionProperty callback:(void (^)(MSGraphExtensionProperty *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSGraphExtensionPropertyFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphExtensionPropertyFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphExtensionPropertyFetcher *)select:(NSString *)params;
- (MSGraphExtensionPropertyFetcher *)expand:(NSString *)value;

@end

#endif
