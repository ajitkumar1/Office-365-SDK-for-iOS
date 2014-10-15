/*******************************************************************************
 * Copyright (c) Microsoft Open Technologies, Inc.
 * All Rights Reserved
 * See License.txt in the project root for license information.
 ******************************************************************************/
#import <Foundation/Foundation.h>
#import "MSOODataExecutable.h"

/**
* The header for type MSOBaseODataContainer.
*/

@interface MSOBaseODataContainer : NSObject<MSOODataExecutable>

-(id)initWitUrl : (NSString *)url  dependencyResolver : (id<MSODependencyResolver>) resolver;

@end