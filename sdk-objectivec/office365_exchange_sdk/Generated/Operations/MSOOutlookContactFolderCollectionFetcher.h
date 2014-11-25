/*******************************************************************************
 * Copyright (c) Microsoft Open Technologies, Inc.
 * All Rights Reserved
 * Licensed under the Apache License, Version 2.0.
 * See License.txt in the project root for license information.
 *
 * Warning: This code was generated automatically. Edits will be overwritten.
 * To make changes to this code, please make changes to the generation framework itself:
 * https://github.com/MSOpenTech/odata-codegen
 *******************************************************************************/

#import <office365_odata_base/office365_odata_base.h>
#import "MSOOutlookContactFolder.h"
#import "MSOOutlookContactFolderFetcher.h"

/**
* The header for type MSOOutlookContactFolderCollectionFetcher.
*/

@protocol MSOOutlookContactFolderCollectionFetcher

@optional
-(NSURLSessionDataTask*)read:(void (^)(NSArray<MSOOutlookContactFolder> *contactFolders, NSError *error))callback;

@end

@interface MSOOutlookContactFolderCollectionFetcher : MSODataCollectionFetcher<MSOOutlookContactFolderCollectionFetcher>

-(id)initWithUrl:(NSString *)urlComponent parent:(id<MSODataReadable>)parent;

-(NSURLSessionDataTask*)addEntity:(MSOOutlookContactFolder* )entity withCallback:(void (^)(MSOOutlookContactFolder *contactFolder, NSError *e))callback;

-(MSOOutlookContactFolderFetcher*)getById:(NSString *)Id;

@end