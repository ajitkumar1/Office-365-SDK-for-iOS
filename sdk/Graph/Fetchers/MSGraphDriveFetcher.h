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



#ifndef MSGRAPHDRIVEFETCHER_H
#define MSGRAPHDRIVEFETCHER_H

#import <orc.h>
#import "MSGraphModels.h"
#import "MSOrcEntityFetcher.h"

@class MSGraphIdentitySetFetcher;
@class MSGraphQuotaFetcher;
@class MSGraphItemCollectionFetcher;
@class MSGraphItemFetcher;
@class MSGraphItemCollectionFetcher;
@class MSGraphItemFetcher;
@class MSGraphItemFetcher;
@class MSGraphDriveOperations;


/** MSGraphDriveFetcher
 *
 */
@interface MSGraphDriveFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphDriveOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSGraphDrive *, MSOrcError *))callback;
- (void)update:(MSGraphDrive *)drive callback:(void (^)(MSGraphDrive *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSGraphDriveFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphDriveFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphDriveFetcher *)select:(NSString *)params;
- (MSGraphDriveFetcher *)expand:(NSString *)value;
@property (strong, nonatomic, readonly, getter=items) MSGraphItemCollectionFetcher *items;

- (MSGraphItemFetcher *)itemsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=shared) MSGraphItemCollectionFetcher *shared;

- (MSGraphItemFetcher *)sharedById:(id)identifier;

@property (strong, nonatomic, readonly, getter=special) MSGraphItemCollectionFetcher *special;

- (MSGraphItemFetcher *)specialById:(id)identifier;


@property (strong, nonatomic, readonly, getter=root) MSGraphItemFetcher *root;

@end

#endif
