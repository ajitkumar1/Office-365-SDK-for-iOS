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


#ifndef MSGRAPHSERVICESENSITIVITY_H
#define MSGRAPHSERVICESENSITIVITY_H

#import <Foundation/Foundation.h>

/** Enum MSGraphServiceSensitivityEnum
 *
 */
typedef NS_ENUM(NSInteger, MSGraphServiceSensitivity) {

    /** Enum entry MSGraphServiceSensitivityNormal
     * */
    MSGraphServiceSensitivityNormal,
    /** Enum entry MSGraphServiceSensitivityPersonal
     * */
    MSGraphServiceSensitivityPersonal,
    /** Enum entry MSGraphServiceSensitivityPrivate
     * */
    MSGraphServiceSensitivityPrivate,
    /** Enum entry MSGraphServiceSensitivityConfidential
     * */
    MSGraphServiceSensitivityConfidential
};


@interface MSGraphServiceSensitivitySerializer : NSObject
+(MSGraphServiceSensitivity) fromString:(NSString *) string;
+(NSString *) toString: (MSGraphServiceSensitivity) value;
@end

#endif
