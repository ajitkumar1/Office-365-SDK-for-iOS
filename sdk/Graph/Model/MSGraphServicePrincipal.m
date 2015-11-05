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



#import "MSGraphModels.h"



/** Implementation for MSGraphServicePrincipal
 *
 */
@implementation MSGraphServicePrincipal


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"accountEnabled", @"accountEnabled", @"appDisplayName", @"appDisplayName", @"appId", @"appId", @"appOwnerTenantId", @"appOwnerTenantId", @"appRoleAssignmentRequired", @"appRoleAssignmentRequired", @"appRoles", @"appRoles", @"displayName", @"displayName", @"errorUrl", @"errorUrl", @"homepage", @"homepage", @"keyCredentials", @"keyCredentials", @"logoutUrl", @"logoutUrl", @"oauth2Permissions", @"oauth2Permissions", @"passwordCredentials", @"passwordCredentials", @"preferredTokenSigningKeyThumbprint", @"preferredTokenSigningKeyThumbprint", @"publisherName", @"publisherName", @"replyUrls", @"replyUrls", @"samlMetadataUrl", @"samlMetadataUrl", @"servicePrincipalNames", @"servicePrincipalNames", @"tags", @"tags", @"appRoleAssignedTo", @"appRoleAssignedTo", @"appRoleAssignments", @"appRoleAssignments", @"oauth2PermissionGrants", @"oauth2PermissionGrants", @"memberOf", @"memberOf", @"createdOnBehalfOf", @"createdOnBehalfOf", @"createdObjects", @"createdObjects", @"owners", @"owners", @"ownedObjects", @"ownedObjects", @"objectType", @"objectType", @"objectId", @"objectId", @"deletionTimestamp", @"deletionTimestamp", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.ServicePrincipal";
        
        
		_appRoles = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_keyCredentials = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_oauth2Permissions = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_passwordCredentials = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_replyUrls = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_servicePrincipalNames = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_tags = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_appRoleAssignments = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_oauth2PermissionGrants = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_memberOf = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_createdObjects = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_owners = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_ownedObjects = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_accountEnabled = [dic objectForKey: @"accountEnabled"] != nil ? [[dic objectForKey: @"accountEnabled"] boolValue] : _accountEnabled;
		_appDisplayName = [dic objectForKey: @"appDisplayName"] != nil ? [[dic objectForKey: @"appDisplayName"] copy] : _appDisplayName;
		_appId = [dic objectForKey: @"appId"] != nil ? [[dic objectForKey: @"appId"] copy] : _appId;
		_appOwnerTenantId = [dic objectForKey: @"appOwnerTenantId"] != nil ? [[dic objectForKey: @"appOwnerTenantId"] copy] : _appOwnerTenantId;
		_appRoleAssignmentRequired = [dic objectForKey: @"appRoleAssignmentRequired"] != nil ? [[dic objectForKey: @"appRoleAssignmentRequired"] boolValue] : _appRoleAssignmentRequired;

        if([dic objectForKey: @"appRoles"] != [NSNull null]){
            _appRoles = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"appRoles"] count]];
            
            for (id object in [dic objectForKey: @"appRoles"]) {
                [_appRoles addObject:[[MSGraphAppRole alloc] initWithDictionary: object]];
            }
        }
        
		_displayName = [dic objectForKey: @"displayName"] != nil ? [[dic objectForKey: @"displayName"] copy] : _displayName;
		_errorUrl = [dic objectForKey: @"errorUrl"] != nil ? [[dic objectForKey: @"errorUrl"] copy] : _errorUrl;
		_homepage = [dic objectForKey: @"homepage"] != nil ? [[dic objectForKey: @"homepage"] copy] : _homepage;

        if([dic objectForKey: @"keyCredentials"] != [NSNull null]){
            _keyCredentials = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"keyCredentials"] count]];
            
            for (id object in [dic objectForKey: @"keyCredentials"]) {
                [_keyCredentials addObject:[[MSGraphKeyCredential alloc] initWithDictionary: object]];
            }
        }
        
		_logoutUrl = [dic objectForKey: @"logoutUrl"] != nil ? [[dic objectForKey: @"logoutUrl"] copy] : _logoutUrl;

        if([dic objectForKey: @"oauth2Permissions"] != [NSNull null]){
            _oauth2Permissions = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"oauth2Permissions"] count]];
            
            for (id object in [dic objectForKey: @"oauth2Permissions"]) {
                [_oauth2Permissions addObject:[[MSGraphOAuth2Permission alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"passwordCredentials"] != [NSNull null]){
            _passwordCredentials = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"passwordCredentials"] count]];
            
            for (id object in [dic objectForKey: @"passwordCredentials"]) {
                [_passwordCredentials addObject:[[MSGraphPasswordCredential alloc] initWithDictionary: object]];
            }
        }
        
		_preferredTokenSigningKeyThumbprint = [dic objectForKey: @"preferredTokenSigningKeyThumbprint"] != nil ? [[dic objectForKey: @"preferredTokenSigningKeyThumbprint"] copy] : _preferredTokenSigningKeyThumbprint;
		_publisherName = [dic objectForKey: @"publisherName"] != nil ? [[dic objectForKey: @"publisherName"] copy] : _publisherName;

        if([dic objectForKey: @"replyUrls"] != [NSNull null]){
            _replyUrls = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"replyUrls"] count]];
            
            for (id object in [dic objectForKey: @"replyUrls"]) {
                [_replyUrls addObject:[object copy]];
            }
        }
        
		_samlMetadataUrl = [dic objectForKey: @"samlMetadataUrl"] != nil ? [[dic objectForKey: @"samlMetadataUrl"] copy] : _samlMetadataUrl;

        if([dic objectForKey: @"servicePrincipalNames"] != [NSNull null]){
            _servicePrincipalNames = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"servicePrincipalNames"] count]];
            
            for (id object in [dic objectForKey: @"servicePrincipalNames"]) {
                [_servicePrincipalNames addObject:[object copy]];
            }
        }
        

        if([dic objectForKey: @"tags"] != [NSNull null]){
            _tags = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"tags"] count]];
            
            for (id object in [dic objectForKey: @"tags"]) {
                [_tags addObject:[object copy]];
            }
        }
        
		_appRoleAssignedTo = [dic objectForKey: @"appRoleAssignedTo"] != nil ? [[MSGraphAppRoleAssignment alloc] initWithDictionary: [dic objectForKey: @"appRoleAssignedTo"]] : _appRoleAssignedTo;

        if([dic objectForKey: @"appRoleAssignments"] != [NSNull null]){
            _appRoleAssignments = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"appRoleAssignments"] count]];
            
            for (id object in [dic objectForKey: @"appRoleAssignments"]) {
                [_appRoleAssignments addObject:[[MSGraphAppRoleAssignment alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"oauth2PermissionGrants"] != [NSNull null]){
            _oauth2PermissionGrants = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"oauth2PermissionGrants"] count]];
            
            for (id object in [dic objectForKey: @"oauth2PermissionGrants"]) {
                [_oauth2PermissionGrants addObject:[[MSGraphOAuth2PermissionGrant alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"memberOf"] != [NSNull null]){
            _memberOf = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"memberOf"] count]];
            
            for (id object in [dic objectForKey: @"memberOf"]) {
                [_memberOf addObject:[[MSGraphDirectoryObject alloc] initWithDictionary: object]];
            }
        }
        
		_createdOnBehalfOf = [dic objectForKey: @"createdOnBehalfOf"] != nil ? [[MSGraphDirectoryObject alloc] initWithDictionary: [dic objectForKey: @"createdOnBehalfOf"]] : _createdOnBehalfOf;

        if([dic objectForKey: @"createdObjects"] != [NSNull null]){
            _createdObjects = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"createdObjects"] count]];
            
            for (id object in [dic objectForKey: @"createdObjects"]) {
                [_createdObjects addObject:[[MSGraphDirectoryObject alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"owners"] != [NSNull null]){
            _owners = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"owners"] count]];
            
            for (id object in [dic objectForKey: @"owners"]) {
                [_owners addObject:[[MSGraphDirectoryObject alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"ownedObjects"] != [NSNull null]){
            _ownedObjects = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"ownedObjects"] count]];
            
            for (id object in [dic objectForKey: @"ownedObjects"]) {
                [_ownedObjects addObject:[[MSGraphDirectoryObject alloc] initWithDictionary: object]];
            }
        }
        

    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    return [[NSDictionary alloc] initWithObjectsAndKeys: 
    		 (_accountEnabled?@"true":@"false"), @"accountEnabled",
		 [_appDisplayName copy], @"appDisplayName",
		 [_appId copy], @"appId",
		 [_appOwnerTenantId copy], @"appOwnerTenantId",
		 (_appRoleAssignmentRequired?@"true":@"false"), @"appRoleAssignmentRequired",
		 [[NSMutableArray alloc] init], @"appRoles",
		 [_displayName copy], @"displayName",
		 [_errorUrl copy], @"errorUrl",
		 [_homepage copy], @"homepage",
		 [[NSMutableArray alloc] init], @"keyCredentials",
		 [_logoutUrl copy], @"logoutUrl",
		 [[NSMutableArray alloc] init], @"oauth2Permissions",
		 [[NSMutableArray alloc] init], @"passwordCredentials",
		 [_preferredTokenSigningKeyThumbprint copy], @"preferredTokenSigningKeyThumbprint",
		 [_publisherName copy], @"publisherName",
		 [[NSMutableArray alloc] init], @"replyUrls",
		 [_samlMetadataUrl copy], @"samlMetadataUrl",
		 [[NSMutableArray alloc] init], @"servicePrincipalNames",
		 [[NSMutableArray alloc] init], @"tags",
		 [_appRoleAssignedTo toDictionary], @"appRoleAssignedTo",
		 [[NSMutableArray alloc] init], @"appRoleAssignments",
		 [[NSMutableArray alloc] init], @"oauth2PermissionGrants",
		 [[NSMutableArray alloc] init], @"memberOf",
		 [_createdOnBehalfOf toDictionary], @"createdOnBehalfOf",
		 [[NSMutableArray alloc] init], @"createdObjects",
		 [[NSMutableArray alloc] init], @"owners",
		 [[NSMutableArray alloc] init], @"ownedObjects",
            nil];
}


/** Setter implementation for property accountEnabled
 *
 */
- (void) setAccountEnabled: (bool) value {
    _accountEnabled = value;
    [self valueChangedFor:@"accountEnabled"];
}
       
/** Setter implementation for property appDisplayName
 *
 */
- (void) setAppDisplayName: (NSString *) value {
    _appDisplayName = value;
    [self valueChangedFor:@"appDisplayName"];
}
       
/** Setter implementation for property appId
 *
 */
- (void) setAppId: (NSString *) value {
    _appId = value;
    [self valueChangedFor:@"appId"];
}
       
/** Setter implementation for property appOwnerTenantId
 *
 */
- (void) setAppOwnerTenantId: (NSString *) value {
    _appOwnerTenantId = value;
    [self valueChangedFor:@"appOwnerTenantId"];
}
       
/** Setter implementation for property appRoleAssignmentRequired
 *
 */
- (void) setAppRoleAssignmentRequired: (bool) value {
    _appRoleAssignmentRequired = value;
    [self valueChangedFor:@"appRoleAssignmentRequired"];
}
       
/** Setter implementation for property appRoles
 *
 */
- (void) setAppRoles: (NSMutableArray *) value {
    _appRoles = value;
    [self valueChangedFor:@"appRoles"];
}
       
/** Setter implementation for property displayName
 *
 */
- (void) setDisplayName: (NSString *) value {
    _displayName = value;
    [self valueChangedFor:@"displayName"];
}
       
/** Setter implementation for property errorUrl
 *
 */
- (void) setErrorUrl: (NSString *) value {
    _errorUrl = value;
    [self valueChangedFor:@"errorUrl"];
}
       
/** Setter implementation for property homepage
 *
 */
- (void) setHomepage: (NSString *) value {
    _homepage = value;
    [self valueChangedFor:@"homepage"];
}
       
/** Setter implementation for property keyCredentials
 *
 */
- (void) setKeyCredentials: (NSMutableArray *) value {
    _keyCredentials = value;
    [self valueChangedFor:@"keyCredentials"];
}
       
/** Setter implementation for property logoutUrl
 *
 */
- (void) setLogoutUrl: (NSString *) value {
    _logoutUrl = value;
    [self valueChangedFor:@"logoutUrl"];
}
       
/** Setter implementation for property oauth2Permissions
 *
 */
- (void) setOauth2Permissions: (NSMutableArray *) value {
    _oauth2Permissions = value;
    [self valueChangedFor:@"oauth2Permissions"];
}
       
/** Setter implementation for property passwordCredentials
 *
 */
- (void) setPasswordCredentials: (NSMutableArray *) value {
    _passwordCredentials = value;
    [self valueChangedFor:@"passwordCredentials"];
}
       
/** Setter implementation for property preferredTokenSigningKeyThumbprint
 *
 */
- (void) setPreferredTokenSigningKeyThumbprint: (NSString *) value {
    _preferredTokenSigningKeyThumbprint = value;
    [self valueChangedFor:@"preferredTokenSigningKeyThumbprint"];
}
       
/** Setter implementation for property publisherName
 *
 */
- (void) setPublisherName: (NSString *) value {
    _publisherName = value;
    [self valueChangedFor:@"publisherName"];
}
       
/** Setter implementation for property replyUrls
 *
 */
- (void) setReplyUrls: (NSMutableArray *) value {
    _replyUrls = value;
    [self valueChangedFor:@"replyUrls"];
}
       
/** Setter implementation for property samlMetadataUrl
 *
 */
- (void) setSamlMetadataUrl: (NSString *) value {
    _samlMetadataUrl = value;
    [self valueChangedFor:@"samlMetadataUrl"];
}
       
/** Setter implementation for property servicePrincipalNames
 *
 */
- (void) setServicePrincipalNames: (NSMutableArray *) value {
    _servicePrincipalNames = value;
    [self valueChangedFor:@"servicePrincipalNames"];
}
       
/** Setter implementation for property tags
 *
 */
- (void) setTags: (NSMutableArray *) value {
    _tags = value;
    [self valueChangedFor:@"tags"];
}
       
/** Setter implementation for property appRoleAssignedTo
 *
 */
- (void) setAppRoleAssignedTo: (MSGraphAppRoleAssignment *) value {
    _appRoleAssignedTo = value;
    [self valueChangedFor:@"appRoleAssignedTo"];
}
       
/** Setter implementation for property appRoleAssignments
 *
 */
- (void) setAppRoleAssignments: (NSMutableArray *) value {
    _appRoleAssignments = value;
    [self valueChangedFor:@"appRoleAssignments"];
}
       
/** Setter implementation for property oauth2PermissionGrants
 *
 */
- (void) setOauth2PermissionGrants: (NSMutableArray *) value {
    _oauth2PermissionGrants = value;
    [self valueChangedFor:@"oauth2PermissionGrants"];
}
       
/** Setter implementation for property memberOf
 *
 */
- (void) setMemberOf: (NSMutableArray *) value {
    _memberOf = value;
    [self valueChangedFor:@"memberOf"];
}
       
/** Setter implementation for property createdOnBehalfOf
 *
 */
- (void) setCreatedOnBehalfOf: (MSGraphDirectoryObject *) value {
    _createdOnBehalfOf = value;
    [self valueChangedFor:@"createdOnBehalfOf"];
}
       
/** Setter implementation for property createdObjects
 *
 */
- (void) setCreatedObjects: (NSMutableArray *) value {
    _createdObjects = value;
    [self valueChangedFor:@"createdObjects"];
}
       
/** Setter implementation for property owners
 *
 */
- (void) setOwners: (NSMutableArray *) value {
    _owners = value;
    [self valueChangedFor:@"owners"];
}
       
/** Setter implementation for property ownedObjects
 *
 */
- (void) setOwnedObjects: (NSMutableArray *) value {
    _ownedObjects = value;
    [self valueChangedFor:@"ownedObjects"];
}
       

@end
