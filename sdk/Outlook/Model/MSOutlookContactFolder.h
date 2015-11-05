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


#ifndef MSOUTLOOKCONTACTFOLDER_H
#define MSOUTLOOKCONTACTFOLDER_H

#import <Foundation/Foundation.h>
#import "core/MSOrcObjectizer.h"

@class MSOutlookContact;
#import "MSOutlookEntity.h"
#import <api/MSOrcInteroperableWithDictionary.h>

/** Interface MSOutlookContactFolder
 *
 */
@interface MSOutlookContactFolder : MSOutlookEntity <MSOrcInteroperableWithDictionary>

/** Property parentFolderId
 *
 */
@property (nonatomic,  copy, setter=setParentFolderId:, getter=parentFolderId) NSString * parentFolderId;

/** Property displayName
 *
 */
@property (nonatomic,  copy, setter=setDisplayName:, getter=displayName) NSString * displayName;

/** Property contacts
 *
 */
@property (nonatomic,  copy, setter=setContacts:, getter=contacts) NSMutableArray * contacts;

/** Property childFolders
 *
 */
@property (nonatomic,  copy, setter=setChildFolders:, getter=childFolders) NSMutableArray * childFolders;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
