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



#ifndef MSGRAPHATTENDEE_H
#define MSGRAPHATTENDEE_H

#import <Foundation/Foundation.h>

@class MSGraphResponseStatus;
@class MSGraphEmailAddress;
#import "MSGraphAttendeeType.h"
#import "MSOrcBaseEntity.h"
#import <api/MSOrcInteroperableWithDictionary.h>

/** Interface MSGraphAttendee
 *
 */
@interface MSGraphAttendee : MSOrcBaseEntity <MSOrcInteroperableWithDictionary>

/** Property status
 *
 */
@property (nonatomic,  copy, setter=setStatus:, getter=status) MSGraphResponseStatus * status;

/** Property type
 *
 */
@property (nonatomic,  setter=setType:, getter=type) MSGraphAttendeeType type;

- (void)setTypeString:(NSString *)string;

/** Property emailAddress
 *
 */
@property (nonatomic,  copy, setter=setEmailAddress:, getter=emailAddress) MSGraphEmailAddress * emailAddress;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
