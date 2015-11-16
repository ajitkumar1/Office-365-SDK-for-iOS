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



#ifndef MSONENOTEAPIUSERFETCHER_H
#define MSONENOTEAPIUSERFETCHER_H

#import "MSOneNoteApiModels.h"
#import "api/api.h"
#import "core/core.h"
#import "core/MSOrcEntityFetcher.h"

@class MSOneNoteApiNotesFetcher;
@class MSOneNoteApiNotesFetcher;
@class MSOneNoteApiUserOperations;


/** MSOneNoteApiUserFetcher
 *
 */
@interface MSOneNoteApiUserFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSOneNoteApiUserOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSOneNoteApiUser *, MSOrcError *))callback;
- (void)update:(MSOneNoteApiUser *)User callback:(void (^)(MSOneNoteApiUser *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSOneNoteApiUserFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOneNoteApiUserFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSOneNoteApiUserFetcher *)select:(NSString *)params;
- (MSOneNoteApiUserFetcher *)expand:(NSString *)value;

@property (strong, nonatomic, readonly, getter=notes) MSOneNoteApiNotesFetcher *notes;

@end

#endif
