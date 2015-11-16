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


#ifndef MSONENOTEAPINOTEBOOKCOLLECTIONOPERATIONS_H
#define MSONENOTEAPINOTEBOOKCOLLECTIONOPERATIONS_H


#import "MSOneNoteApiModels.h"
#import "api/api.h"
#import "core/core.h"
#import "core/MSOrcOperations.h"


/** MSOneNoteApiNotebookCollectionOperations
 *
 */
@interface MSOneNoteApiNotebookCollectionOperations : MSOrcOperations

- (void)copyNotebookWithSiteCollectionId:(NSString *)siteCollectionId siteId:(NSString *)siteId groupId:(NSString *)groupId renameAs:(NSString *)renameAs notebookFolder:(NSString *)notebookFolder callback:(void (^)(MSOneNoteApiCopyStatusModel *, MSOrcError*))callback ;
- (void)copyNotebookRawWithSiteCollectionId:(NSString *)siteCollectionId siteId:(NSString *)siteId groupId:(NSString *)groupId renameAs:(NSString *)renameAs notebookFolder:(NSString *)notebookFolder callback:(void (^)(NSString *, MSOrcError*))callback ;
- (void)exportNotebookWithCallback:(void (^)(int, MSOrcError*))callback ;
- (void)exportNotebookRawWithCallback:(void (^)(NSString *, MSOrcError*))callback ;

@end

#endif
