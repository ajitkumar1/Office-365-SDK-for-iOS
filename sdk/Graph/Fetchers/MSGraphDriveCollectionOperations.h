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


#ifndef MSGRAPHDRIVECOLLECTIONOPERATIONS_H
#define MSGRAPHDRIVECOLLECTIONOPERATIONS_H


#import "MSGraphModels.h"
#import "api/api.h"
#import "core/MSOrcOperations.h"


/** MSGraphDriveCollectionOperations
 *
 */
@interface MSGraphDriveCollectionOperations : MSOrcOperations

- (void)allPhotosWithCallback:(void (^)(MSGraphItem *, MSOrcError*))callback ;
- (void)allPhotosRawWithCallback:(void (^)(NSString *, MSOrcError*))callback ;

@end

#endif
