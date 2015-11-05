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



#ifndef MSGRAPHTASKFETCHER_H
#define MSGRAPHTASKFETCHER_H

#import <orc.h>
#import "MSGraphModels.h"
#import "MSOrcEntityFetcher.h"

@class MSGraphAppliedCategoriesCollection_Fetcher;
@class MSGraphTaskDetailsFetcher;
@class MSGraphTaskBoardTaskFormatFetcher;
@class MSGraphTaskDetailsFetcher;
@class MSGraphTaskBoardTaskFormatFetcher;
@class MSGraphTaskOperations;


/** MSGraphTaskFetcher
 *
 */
@interface MSGraphTaskFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphTaskOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSGraphTask *, MSOrcError *))callback;
- (void)update:(MSGraphTask *)task callback:(void (^)(MSGraphTask *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSGraphTaskFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphTaskFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphTaskFetcher *)select:(NSString *)params;
- (MSGraphTaskFetcher *)expand:(NSString *)value;

@property (strong, nonatomic, readonly, getter=details) MSGraphTaskDetailsFetcher *details;

@property (strong, nonatomic, readonly, getter=assignedToTaskBoardFormat) MSGraphTaskBoardTaskFormatFetcher *assignedToTaskBoardFormat;

@property (strong, nonatomic, readonly, getter=progressTaskBoardFormat) MSGraphTaskBoardTaskFormatFetcher *progressTaskBoardFormat;

@property (strong, nonatomic, readonly, getter=bucketTaskBoardFormat) MSGraphTaskBoardTaskFormatFetcher *bucketTaskBoardFormat;

@end

#endif
