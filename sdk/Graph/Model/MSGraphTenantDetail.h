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


#ifndef MSGRAPHTENANTDETAIL_H
#define MSGRAPHTENANTDETAIL_H

#import <Foundation/Foundation.h>
#import "core/MSOrcObjectizer.h"

@class MSGraphAssignedPlan;
@class MSGraphProvisionedPlan;
@class MSGraphProvisioningError;
@class MSGraphVerifiedDomain;
#import "MSGraphDirectoryObject.h"
#import <api/MSOrcInteroperableWithDictionary.h>

/** Interface MSGraphTenantDetail
 *
 */
@interface MSGraphTenantDetail : MSGraphDirectoryObject <MSOrcInteroperableWithDictionary>

/** Property assignedPlans
 *
 */
@property (nonatomic,  copy, setter=setAssignedPlans:, getter=assignedPlans) NSMutableArray * assignedPlans;

/** Property city
 *
 */
@property (nonatomic,  copy, setter=setCity:, getter=city) NSString * city;

/** Property companyLastDirSyncTime
 *
 */
@property (nonatomic,  copy, setter=setCompanyLastDirSyncTime:, getter=companyLastDirSyncTime) NSDate * companyLastDirSyncTime;

/** Property country
 *
 */
@property (nonatomic,  copy, setter=setCountry:, getter=country) NSString * country;

/** Property countryLetterCode
 *
 */
@property (nonatomic,  copy, setter=setCountryLetterCode:, getter=countryLetterCode) NSString * countryLetterCode;

/** Property dirSyncEnabled
 *
 */
@property (nonatomic,  setter=setDirSyncEnabled:, getter=dirSyncEnabled) bool dirSyncEnabled;

/** Property displayName
 *
 */
@property (nonatomic,  copy, setter=setDisplayName:, getter=displayName) NSString * displayName;

/** Property marketingNotificationEmails
 *
 */
@property (nonatomic,  copy, setter=setMarketingNotificationEmails:, getter=marketingNotificationEmails) NSMutableArray * marketingNotificationEmails;

/** Property postalCode
 *
 */
@property (nonatomic,  copy, setter=setPostalCode:, getter=postalCode) NSString * postalCode;

/** Property preferredLanguage
 *
 */
@property (nonatomic,  copy, setter=setPreferredLanguage:, getter=preferredLanguage) NSString * preferredLanguage;

/** Property provisionedPlans
 *
 */
@property (nonatomic,  copy, setter=setProvisionedPlans:, getter=provisionedPlans) NSMutableArray * provisionedPlans;

/** Property provisioningErrors
 *
 */
@property (nonatomic,  copy, setter=setProvisioningErrors:, getter=provisioningErrors) NSMutableArray * provisioningErrors;

/** Property securityComplianceNotificationMails
 *
 */
@property (nonatomic,  copy, setter=setSecurityComplianceNotificationMails:, getter=securityComplianceNotificationMails) NSMutableArray * securityComplianceNotificationMails;

/** Property securityComplianceNotificationPhones
 *
 */
@property (nonatomic,  copy, setter=setSecurityComplianceNotificationPhones:, getter=securityComplianceNotificationPhones) NSMutableArray * securityComplianceNotificationPhones;

/** Property state
 *
 */
@property (nonatomic,  copy, setter=setState:, getter=state) NSString * state;

/** Property street
 *
 */
@property (nonatomic,  copy, setter=setStreet:, getter=street) NSString * street;

/** Property technicalNotificationMails
 *
 */
@property (nonatomic,  copy, setter=setTechnicalNotificationMails:, getter=technicalNotificationMails) NSMutableArray * technicalNotificationMails;

/** Property telephoneNumber
 *
 */
@property (nonatomic,  copy, setter=setTelephoneNumber:, getter=telephoneNumber) NSString * telephoneNumber;

/** Property verifiedDomains
 *
 */
@property (nonatomic,  copy, setter=setVerifiedDomains:, getter=verifiedDomains) NSMutableArray * verifiedDomains;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
