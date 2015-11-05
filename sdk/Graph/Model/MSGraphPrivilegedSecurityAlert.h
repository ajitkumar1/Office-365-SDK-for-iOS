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


#ifndef MSGRAPHPRIVILEGEDSECURITYALERT_H
#define MSGRAPHPRIVILEGEDSECURITYALERT_H

#import <Foundation/Foundation.h>
#import "core/MSOrcObjectizer.h"

#import "MSGraphAlertSeverity.h"
#import "MSGraphAlertType.h"
#import "MSGraphAlertStatus.h"
#import "MSOrcBaseEntity.h"
#import <api/MSOrcInteroperableWithDictionary.h>

/** Interface MSGraphPrivilegedSecurityAlert
 *
 */
@interface MSGraphPrivilegedSecurityAlert : MSOrcBaseEntity <MSOrcInteroperableWithDictionary>

/** Property alertId
 *
 */
@property (nonatomic,  copy, setter=setAlertId:, getter=alertId) NSString * alertId;

/** Property numberOfAffectedItems
 *
 */
@property (nonatomic,  setter=setNumberOfAffectedItems:, getter=numberOfAffectedItems) int numberOfAffectedItems;

/** Property additionalData
 *
 */
@property (nonatomic,  copy, setter=setAdditionalData:, getter=additionalData) NSString * additionalData;

/** Property alertName
 *
 */
@property (nonatomic,  copy, setter=setAlertName:, getter=alertName) NSString * alertName;

/** Property alertDescription
 *
 */
@property (nonatomic,  copy, setter=setAlertDescription:, getter=alertDescription) NSString * alertDescription;

/** Property lastModifiedTime
 *
 */
@property (nonatomic,  copy, setter=setLastModifiedTime:, getter=lastModifiedTime) NSDate * lastModifiedTime;

/** Property lastScannedTime
 *
 */
@property (nonatomic,  copy, setter=setLastScannedTime:, getter=lastScannedTime) NSDate * lastScannedTime;

/** Property severityLevel
 *
 */
@property (nonatomic,  setter=setSeverityLevel:, getter=severityLevel) MSGraphAlertSeverity severityLevel;

- (void)setSeverityLevelString:(NSString *)string;

/** Property alertType
 *
 */
@property (nonatomic,  setter=setAlertType:, getter=alertType) MSGraphAlertType alertType;

- (void)setAlertTypeString:(NSString *)string;

/** Property securityImpact
 *
 */
@property (nonatomic,  copy, setter=setSecurityImpact:, getter=securityImpact) NSString * securityImpact;

/** Property mitigationSteps
 *
 */
@property (nonatomic,  copy, setter=setMitigationSteps:, getter=mitigationSteps) NSString * mitigationSteps;

/** Property howToPrevent
 *
 */
@property (nonatomic,  copy, setter=setHowToPrevent:, getter=howToPrevent) NSString * howToPrevent;

/** Property wasDismissed
 *
 */
@property (nonatomic,  setter=setWasDismissed:, getter=wasDismissed) bool wasDismissed;

/** Property isActive
 *
 */
@property (nonatomic,  setter=setIsActive:, getter=isActive) bool isActive;

/** Property isResolvable
 *
 */
@property (nonatomic,  setter=setIsResolvable:, getter=isResolvable) bool isResolvable;

/** Property isConfigurable
 *
 */
@property (nonatomic,  setter=setIsConfigurable:, getter=isConfigurable) bool isConfigurable;

/** Property status
 *
 */
@property (nonatomic,  setter=setStatus:, getter=status) MSGraphAlertStatus status;

- (void)setStatusString:(NSString *)string;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
