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


#ifndef MSGRAPHINFERENCECLASSIFICATIONOVERRIDE_H
#define MSGRAPHINFERENCECLASSIFICATIONOVERRIDE_H

#import <Foundation/Foundation.h>
#import "core/MSOrcObjectizer.h"

@class MSGraphEmailAddress;
#import "MSGraphInferenceClassificationType.h"
#import "MSGraphEntity.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSGraphInferenceClassificationOverride
 *
 */
@interface MSGraphInferenceClassificationOverride : MSGraphEntity <MSOrcInteroperableWithDictionary>

/** Property classifyAs
 *
 */
@property (nonatomic,  setter=setClassifyAs:, getter=classifyAs) MSGraphInferenceClassificationType classifyAs;

- (void)setClassifyAsString:(NSString *)string;

/** Property senderEmailAddress
 *
 */
@property (nonatomic,  copy, setter=setSenderEmailAddress:, getter=senderEmailAddress) MSGraphEmailAddress * senderEmailAddress;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
