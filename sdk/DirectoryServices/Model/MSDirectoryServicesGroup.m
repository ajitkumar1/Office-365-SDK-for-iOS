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



#import "MSDirectoryServicesModels.h"



/** Implementation for MSDirectoryServicesGroup
 *
 */
@implementation MSDirectoryServicesGroup


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"description", @"_description", @"dirSyncEnabled", @"dirSyncEnabled", @"displayName", @"displayName", @"lastDirSyncTime", @"lastDirSyncTime", @"mail", @"mail", @"mailNickname", @"mailNickname", @"mailEnabled", @"mailEnabled", @"onPremisesSecurityIdentifier", @"onPremisesSecurityIdentifier", @"provisioningErrors", @"provisioningErrors", @"proxyAddresses", @"proxyAddresses", @"securityEnabled", @"securityEnabled", @"appRoleAssignments", @"appRoleAssignments", @"objectType", @"objectType", @"objectId", @"objectId", @"deletionTimestamp", @"deletionTimestamp", @"createdOnBehalfOf", @"createdOnBehalfOf", @"createdObjects", @"createdObjects", @"manager", @"manager", @"directReports", @"directReports", @"members", @"members", @"memberOf", @"memberOf", @"owners", @"owners", @"ownedObjects", @"ownedObjects", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.DirectoryServices.Group";
        
        
		_provisioningErrors = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_proxyAddresses = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_appRoleAssignments = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		__description = [dic objectForKey: @"description"] != nil ? [[dic objectForKey: @"description"] copy] : __description;
		_dirSyncEnabled = [dic objectForKey: @"dirSyncEnabled"] != nil ? [[dic objectForKey: @"dirSyncEnabled"] boolValue] : _dirSyncEnabled;
		_displayName = [dic objectForKey: @"displayName"] != nil ? [[dic objectForKey: @"displayName"] copy] : _displayName;
		_lastDirSyncTime = [dic objectForKey: @"lastDirSyncTime"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"lastDirSyncTime"]] : _lastDirSyncTime;
		_mail = [dic objectForKey: @"mail"] != nil ? [[dic objectForKey: @"mail"] copy] : _mail;
		_mailNickname = [dic objectForKey: @"mailNickname"] != nil ? [[dic objectForKey: @"mailNickname"] copy] : _mailNickname;
		_mailEnabled = [dic objectForKey: @"mailEnabled"] != nil ? [[dic objectForKey: @"mailEnabled"] boolValue] : _mailEnabled;
		_onPremisesSecurityIdentifier = [dic objectForKey: @"onPremisesSecurityIdentifier"] != nil ? [[dic objectForKey: @"onPremisesSecurityIdentifier"] copy] : _onPremisesSecurityIdentifier;

        if([dic objectForKey: @"provisioningErrors"] != [NSNull null]){
            _provisioningErrors = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"provisioningErrors"] count]];
            
            for (id object in [dic objectForKey: @"provisioningErrors"]) {
                [_provisioningErrors addObject:[[MSDirectoryServicesProvisioningError alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"proxyAddresses"] != [NSNull null]){
            _proxyAddresses = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"proxyAddresses"] count]];
            
            for (id object in [dic objectForKey: @"proxyAddresses"]) {
                [_proxyAddresses addObject:[object copy]];
            }
        }
        
		_securityEnabled = [dic objectForKey: @"securityEnabled"] != nil ? [[dic objectForKey: @"securityEnabled"] boolValue] : _securityEnabled;

        if([dic objectForKey: @"appRoleAssignments"] != [NSNull null]){
            _appRoleAssignments = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"appRoleAssignments"] count]];
            
            for (id object in [dic objectForKey: @"appRoleAssignments"]) {
                [_appRoleAssignments addObject:[[MSDirectoryServicesAppRoleAssignment alloc] initWithDictionary: object]];
            }
        }
        
		self.objectType = [dic objectForKey: @"objectType"] != nil ? [[dic objectForKey: @"objectType"] copy] : self.objectType;
		self.objectId = [dic objectForKey: @"objectId"] != nil ? [[dic objectForKey: @"objectId"] copy] : self.objectId;
		self.deletionTimestamp = [dic objectForKey: @"deletionTimestamp"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"deletionTimestamp"]] : self.deletionTimestamp;
		self.createdOnBehalfOf = [dic objectForKey: @"createdOnBehalfOf"] != nil ? [[MSDirectoryServicesDirectoryObject alloc] initWithDictionary: [dic objectForKey: @"createdOnBehalfOf"]] : self.createdOnBehalfOf;

        if([dic objectForKey: @"createdObjects"] != [NSNull null]){
            self.createdObjects = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"createdObjects"] count]];
            
            for (id object in [dic objectForKey: @"createdObjects"]) {
                [self.createdObjects addObject:[[MSDirectoryServicesDirectoryObject alloc] initWithDictionary: object]];
            }
        }
        
		self.manager = [dic objectForKey: @"manager"] != nil ? [[MSDirectoryServicesDirectoryObject alloc] initWithDictionary: [dic objectForKey: @"manager"]] : self.manager;

        if([dic objectForKey: @"directReports"] != [NSNull null]){
            self.directReports = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"directReports"] count]];
            
            for (id object in [dic objectForKey: @"directReports"]) {
                [self.directReports addObject:[[MSDirectoryServicesDirectoryObject alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"members"] != [NSNull null]){
            self.members = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"members"] count]];
            
            for (id object in [dic objectForKey: @"members"]) {
                [self.members addObject:[[MSDirectoryServicesDirectoryObject alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"memberOf"] != [NSNull null]){
            self.memberOf = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"memberOf"] count]];
            
            for (id object in [dic objectForKey: @"memberOf"]) {
                [self.memberOf addObject:[[MSDirectoryServicesDirectoryObject alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"owners"] != [NSNull null]){
            self.owners = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"owners"] count]];
            
            for (id object in [dic objectForKey: @"owners"]) {
                [self.owners addObject:[[MSDirectoryServicesDirectoryObject alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"ownedObjects"] != [NSNull null]){
            self.ownedObjects = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"ownedObjects"] count]];
            
            for (id object in [dic objectForKey: @"ownedObjects"]) {
                [self.ownedObjects addObject:[[MSDirectoryServicesDirectoryObject alloc] initWithDictionary: object]];
            }
        }
        

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self._description copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"description"];}
	{id curVal = (self.dirSyncEnabled?@"true":@"false"); if (curVal!=nil) [dic setValue: curVal forKey: @"dirSyncEnabled"];}
	{id curVal = [self.displayName copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"displayName"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.lastDirSyncTime]; if (curVal!=nil) [dic setValue: curVal forKey: @"lastDirSyncTime"];}
	{id curVal = [self.mail copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"mail"];}
	{id curVal = [self.mailNickname copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"mailNickname"];}
	{id curVal = (self.mailEnabled?@"true":@"false"); if (curVal!=nil) [dic setValue: curVal forKey: @"mailEnabled"];}
	{id curVal = [self.onPremisesSecurityIdentifier copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"onPremisesSecurityIdentifier"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"provisioningErrors"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"proxyAddresses"];}
	{id curVal = (self.securityEnabled?@"true":@"false"); if (curVal!=nil) [dic setValue: curVal forKey: @"securityEnabled"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"appRoleAssignments"];}
	{id curVal = [self.objectType copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"objectType"];}
	{id curVal = [self.objectId copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"objectId"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.deletionTimestamp]; if (curVal!=nil) [dic setValue: curVal forKey: @"deletionTimestamp"];}
	{id curVal = [self.createdOnBehalfOf toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"createdOnBehalfOf"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"createdObjects"];}
	{id curVal = [self.manager toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"manager"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"directReports"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"members"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"memberOf"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"owners"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"ownedObjects"];}
    [dic setValue: @"#Microsoft.DirectoryServices.Group" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self._description;
    if([self.updatedValues containsObject:@"description"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"description"];
    }
    }
	{id curVal = self.dirSyncEnabled;
    if([self.updatedValues containsObject:@"dirSyncEnabled"])
    {
        [dic setValue: curVal==nil?[NSNull null]:(curVal?@"true":@"false") forKey: @"dirSyncEnabled"];
    }
    }
	{id curVal = self.displayName;
    if([self.updatedValues containsObject:@"displayName"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"displayName"];
    }
    }
	{id curVal = self.lastDirSyncTime;
    if([self.updatedValues containsObject:@"lastDirSyncTime"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"lastDirSyncTime"];
    }
    }
	{id curVal = self.mail;
    if([self.updatedValues containsObject:@"mail"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"mail"];
    }
    }
	{id curVal = self.mailNickname;
    if([self.updatedValues containsObject:@"mailNickname"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"mailNickname"];
    }
    }
	{id curVal = self.mailEnabled;
    if([self.updatedValues containsObject:@"mailEnabled"])
    {
        [dic setValue: curVal==nil?[NSNull null]:(curVal?@"true":@"false") forKey: @"mailEnabled"];
    }
    }
	{id curVal = self.onPremisesSecurityIdentifier;
    if([self.updatedValues containsObject:@"onPremisesSecurityIdentifier"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"onPremisesSecurityIdentifier"];
    }
    }
	{id curVal = self.provisioningErrors;
    if([self.updatedValues containsObject:@"provisioningErrors"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"provisioningErrors"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.proxyAddresses;
    if([self.updatedValues containsObject:@"proxyAddresses"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"proxyAddresses"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.securityEnabled;
    if([self.updatedValues containsObject:@"securityEnabled"])
    {
        [dic setValue: curVal==nil?[NSNull null]:(curVal?@"true":@"false") forKey: @"securityEnabled"];
    }
    }
	{id curVal = self.appRoleAssignments;
    if([self.updatedValues containsObject:@"appRoleAssignments"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"appRoleAssignments"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.objectType;
    if([self.updatedValues containsObject:@"objectType"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"objectType"];
    }
    }
	{id curVal = self.objectId;
    if([self.updatedValues containsObject:@"objectId"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"objectId"];
    }
    }
	{id curVal = self.deletionTimestamp;
    if([self.updatedValues containsObject:@"deletionTimestamp"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"deletionTimestamp"];
    }
    }
	{id curVal = self.createdOnBehalfOf;
    if([self.updatedValues containsObject:@"createdOnBehalfOf"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"createdOnBehalfOf"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"createdOnBehalfOf"];
            }
        
            }}
	{id curVal = self.createdObjects;
    if([self.updatedValues containsObject:@"createdObjects"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"createdObjects"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.manager;
    if([self.updatedValues containsObject:@"manager"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"manager"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"manager"];
            }
        
            }}
	{id curVal = self.directReports;
    if([self.updatedValues containsObject:@"directReports"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"directReports"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.members;
    if([self.updatedValues containsObject:@"members"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"members"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.memberOf;
    if([self.updatedValues containsObject:@"memberOf"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"memberOf"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.owners;
    if([self.updatedValues containsObject:@"owners"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"owners"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.ownedObjects;
    if([self.updatedValues containsObject:@"ownedObjects"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"ownedObjects"];
    }
        else
    {
                
        //Check collection change:
        
            }}
    return dic;
}


/** Setter implementation for property _description
 *
 */
- (void) setDescription: (NSString *) value {
    __description = value;
    [self valueChangedFor:@"description"];
}
       
/** Setter implementation for property dirSyncEnabled
 *
 */
- (void) setDirSyncEnabled: (bool) value {
    _dirSyncEnabled = value;
    [self valueChangedFor:@"dirSyncEnabled"];
}
       
/** Setter implementation for property displayName
 *
 */
- (void) setDisplayName: (NSString *) value {
    _displayName = value;
    [self valueChangedFor:@"displayName"];
}
       
/** Setter implementation for property lastDirSyncTime
 *
 */
- (void) setLastDirSyncTime: (NSDate *) value {
    _lastDirSyncTime = value;
    [self valueChangedFor:@"lastDirSyncTime"];
}
       
/** Setter implementation for property mail
 *
 */
- (void) setMail: (NSString *) value {
    _mail = value;
    [self valueChangedFor:@"mail"];
}
       
/** Setter implementation for property mailNickname
 *
 */
- (void) setMailNickname: (NSString *) value {
    _mailNickname = value;
    [self valueChangedFor:@"mailNickname"];
}
       
/** Setter implementation for property mailEnabled
 *
 */
- (void) setMailEnabled: (bool) value {
    _mailEnabled = value;
    [self valueChangedFor:@"mailEnabled"];
}
       
/** Setter implementation for property onPremisesSecurityIdentifier
 *
 */
- (void) setOnPremisesSecurityIdentifier: (NSString *) value {
    _onPremisesSecurityIdentifier = value;
    [self valueChangedFor:@"onPremisesSecurityIdentifier"];
}
       
/** Setter implementation for property provisioningErrors
 *
 */
- (void) setProvisioningErrors: (NSMutableArray *) value {
    _provisioningErrors = value;
    [self valueChangedFor:@"provisioningErrors"];
}
       
/** Setter implementation for property proxyAddresses
 *
 */
- (void) setProxyAddresses: (NSMutableArray *) value {
    _proxyAddresses = value;
    [self valueChangedFor:@"proxyAddresses"];
}
       
/** Setter implementation for property securityEnabled
 *
 */
- (void) setSecurityEnabled: (bool) value {
    _securityEnabled = value;
    [self valueChangedFor:@"securityEnabled"];
}
       
/** Setter implementation for property appRoleAssignments
 *
 */
- (void) setAppRoleAssignments: (NSMutableArray *) value {
    _appRoleAssignments = value;
    [self valueChangedFor:@"appRoleAssignments"];
}
       

@end