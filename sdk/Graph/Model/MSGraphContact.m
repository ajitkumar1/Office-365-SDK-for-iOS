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



/** Implementation for MSGraphContact
 *
 */
@implementation MSGraphContact


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"ParentFolderId", @"parentFolderId", @"Birthday", @"birthday", @"FileAs", @"fileAs", @"DisplayName", @"displayName", @"GivenName", @"givenName", @"Initials", @"initials", @"MiddleName", @"middleName", @"NickName", @"nickName", @"Surname", @"surname", @"Title", @"title", @"YomiGivenName", @"yomiGivenName", @"YomiSurname", @"yomiSurname", @"YomiCompanyName", @"yomiCompanyName", @"Generation", @"generation", @"EmailAddresses", @"emailAddresses", @"ImAddresses", @"imAddresses", @"JobTitle", @"jobTitle", @"CompanyName", @"companyName", @"Department", @"department", @"OfficeLocation", @"officeLocation", @"Profession", @"profession", @"BusinessHomePage", @"businessHomePage", @"AssistantName", @"assistantName", @"Manager", @"manager", @"HomePhones", @"homePhones", @"MobilePhone1", @"mobilePhone1", @"BusinessPhones", @"businessPhones", @"HomeAddress", @"homeAddress", @"BusinessAddress", @"businessAddress", @"OtherAddress", @"otherAddress", @"SpouseName", @"spouseName", @"PersonalNotes", @"personalNotes", @"Children", @"children", @"Extensions", @"extensions", @"Photo", @"photo", @"CreatedDateTime", @"createdDateTime", @"LastModifiedDateTime", @"lastModifiedDateTime", @"ChangeKey", @"changeKey", @"Categories", @"categories", @"Id", @"_id", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.Contact";
        
        
		_emailAddresses = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_imAddresses = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_homePhones = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_businessPhones = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_children = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
		_extensions = [[NSMutableArray alloc] initWithCollectionType:@"NSMutableArray"];
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_parentFolderId = [dic objectForKey: @"ParentFolderId"] != nil ? [[dic objectForKey: @"ParentFolderId"] copy] : _parentFolderId;
		_birthday = [dic objectForKey: @"Birthday"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"Birthday"]] : _birthday;
		_fileAs = [dic objectForKey: @"FileAs"] != nil ? [[dic objectForKey: @"FileAs"] copy] : _fileAs;
		_displayName = [dic objectForKey: @"DisplayName"] != nil ? [[dic objectForKey: @"DisplayName"] copy] : _displayName;
		_givenName = [dic objectForKey: @"GivenName"] != nil ? [[dic objectForKey: @"GivenName"] copy] : _givenName;
		_initials = [dic objectForKey: @"Initials"] != nil ? [[dic objectForKey: @"Initials"] copy] : _initials;
		_middleName = [dic objectForKey: @"MiddleName"] != nil ? [[dic objectForKey: @"MiddleName"] copy] : _middleName;
		_nickName = [dic objectForKey: @"NickName"] != nil ? [[dic objectForKey: @"NickName"] copy] : _nickName;
		_surname = [dic objectForKey: @"Surname"] != nil ? [[dic objectForKey: @"Surname"] copy] : _surname;
		_title = [dic objectForKey: @"Title"] != nil ? [[dic objectForKey: @"Title"] copy] : _title;
		_yomiGivenName = [dic objectForKey: @"YomiGivenName"] != nil ? [[dic objectForKey: @"YomiGivenName"] copy] : _yomiGivenName;
		_yomiSurname = [dic objectForKey: @"YomiSurname"] != nil ? [[dic objectForKey: @"YomiSurname"] copy] : _yomiSurname;
		_yomiCompanyName = [dic objectForKey: @"YomiCompanyName"] != nil ? [[dic objectForKey: @"YomiCompanyName"] copy] : _yomiCompanyName;
		_generation = [dic objectForKey: @"Generation"] != nil ? [[dic objectForKey: @"Generation"] copy] : _generation;

        if([dic objectForKey: @"EmailAddresses"] != [NSNull null]){
            _emailAddresses = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"EmailAddresses"] count]];
            
            for (id object in [dic objectForKey: @"EmailAddresses"]) {
                [_emailAddresses addObject:[[MSGraphEmailAddress alloc] initWithDictionary: object]];
            }
        }
        

        if([dic objectForKey: @"ImAddresses"] != [NSNull null]){
            _imAddresses = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"ImAddresses"] count]];
            
            for (id object in [dic objectForKey: @"ImAddresses"]) {
                [_imAddresses addObject:[object copy]];
            }
        }
        
		_jobTitle = [dic objectForKey: @"JobTitle"] != nil ? [[dic objectForKey: @"JobTitle"] copy] : _jobTitle;
		_companyName = [dic objectForKey: @"CompanyName"] != nil ? [[dic objectForKey: @"CompanyName"] copy] : _companyName;
		_department = [dic objectForKey: @"Department"] != nil ? [[dic objectForKey: @"Department"] copy] : _department;
		_officeLocation = [dic objectForKey: @"OfficeLocation"] != nil ? [[dic objectForKey: @"OfficeLocation"] copy] : _officeLocation;
		_profession = [dic objectForKey: @"Profession"] != nil ? [[dic objectForKey: @"Profession"] copy] : _profession;
		_businessHomePage = [dic objectForKey: @"BusinessHomePage"] != nil ? [[dic objectForKey: @"BusinessHomePage"] copy] : _businessHomePage;
		_assistantName = [dic objectForKey: @"AssistantName"] != nil ? [[dic objectForKey: @"AssistantName"] copy] : _assistantName;
		_manager = [dic objectForKey: @"Manager"] != nil ? [[dic objectForKey: @"Manager"] copy] : _manager;

        if([dic objectForKey: @"HomePhones"] != [NSNull null]){
            _homePhones = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"HomePhones"] count]];
            
            for (id object in [dic objectForKey: @"HomePhones"]) {
                [_homePhones addObject:[object copy]];
            }
        }
        
		_mobilePhone1 = [dic objectForKey: @"MobilePhone1"] != nil ? [[dic objectForKey: @"MobilePhone1"] copy] : _mobilePhone1;

        if([dic objectForKey: @"BusinessPhones"] != [NSNull null]){
            _businessPhones = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"BusinessPhones"] count]];
            
            for (id object in [dic objectForKey: @"BusinessPhones"]) {
                [_businessPhones addObject:[object copy]];
            }
        }
        
		_homeAddress = [dic objectForKey: @"HomeAddress"] != nil ? [[MSGraphPhysicalAddress alloc] initWithDictionary: [dic objectForKey: @"HomeAddress"]] : _homeAddress;
		_businessAddress = [dic objectForKey: @"BusinessAddress"] != nil ? [[MSGraphPhysicalAddress alloc] initWithDictionary: [dic objectForKey: @"BusinessAddress"]] : _businessAddress;
		_otherAddress = [dic objectForKey: @"OtherAddress"] != nil ? [[MSGraphPhysicalAddress alloc] initWithDictionary: [dic objectForKey: @"OtherAddress"]] : _otherAddress;
		_spouseName = [dic objectForKey: @"SpouseName"] != nil ? [[dic objectForKey: @"SpouseName"] copy] : _spouseName;
		_personalNotes = [dic objectForKey: @"PersonalNotes"] != nil ? [[dic objectForKey: @"PersonalNotes"] copy] : _personalNotes;

        if([dic objectForKey: @"Children"] != [NSNull null]){
            _children = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"Children"] count]];
            
            for (id object in [dic objectForKey: @"Children"]) {
                [_children addObject:[object copy]];
            }
        }
        

        if([dic objectForKey: @"Extensions"] != [NSNull null]){
            _extensions = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"Extensions"] count]];
            
            for (id object in [dic objectForKey: @"Extensions"]) {
                [_extensions addObject:[[MSGraphExtension alloc] initWithDictionary: object]];
            }
        }
        
		_photo = [dic objectForKey: @"Photo"] != nil ? [[MSGraphProfilePhoto alloc] initWithDictionary: [dic objectForKey: @"Photo"]] : _photo;
		self.createdDateTime = [dic objectForKey: @"CreatedDateTime"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"CreatedDateTime"]] : self.createdDateTime;
		self.lastModifiedDateTime = [dic objectForKey: @"LastModifiedDateTime"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"LastModifiedDateTime"]] : self.lastModifiedDateTime;
		self.changeKey = [dic objectForKey: @"ChangeKey"] != nil ? [[dic objectForKey: @"ChangeKey"] copy] : self.changeKey;

        if([dic objectForKey: @"Categories"] != [NSNull null]){
            self.categories = [NSMutableArray arrayWithCapacity:[[dic objectForKey: @"Categories"] count]];
            
            for (id object in [dic objectForKey: @"Categories"]) {
                [self.categories addObject:[object copy]];
            }
        }
        
		self._id = [dic objectForKey: @"Id"] != nil ? [[dic objectForKey: @"Id"] copy] : self._id;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.parentFolderId copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"ParentFolderId"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.birthday]; if (curVal!=nil) [dic setValue: curVal forKey: @"Birthday"];}
	{id curVal = [self.fileAs copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"FileAs"];}
	{id curVal = [self.displayName copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"DisplayName"];}
	{id curVal = [self.givenName copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"GivenName"];}
	{id curVal = [self.initials copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"Initials"];}
	{id curVal = [self.middleName copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"MiddleName"];}
	{id curVal = [self.nickName copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"NickName"];}
	{id curVal = [self.surname copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"Surname"];}
	{id curVal = [self.title copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"Title"];}
	{id curVal = [self.yomiGivenName copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"YomiGivenName"];}
	{id curVal = [self.yomiSurname copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"YomiSurname"];}
	{id curVal = [self.yomiCompanyName copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"YomiCompanyName"];}
	{id curVal = [self.generation copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"Generation"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"EmailAddresses"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"ImAddresses"];}
	{id curVal = [self.jobTitle copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"JobTitle"];}
	{id curVal = [self.companyName copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"CompanyName"];}
	{id curVal = [self.department copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"Department"];}
	{id curVal = [self.officeLocation copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"OfficeLocation"];}
	{id curVal = [self.profession copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"Profession"];}
	{id curVal = [self.businessHomePage copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"BusinessHomePage"];}
	{id curVal = [self.assistantName copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"AssistantName"];}
	{id curVal = [self.manager copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"Manager"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"HomePhones"];}
	{id curVal = [self.mobilePhone1 copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"MobilePhone1"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"BusinessPhones"];}
	{id curVal = [self.homeAddress toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"HomeAddress"];}
	{id curVal = [self.businessAddress toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"BusinessAddress"];}
	{id curVal = [self.otherAddress toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"OtherAddress"];}
	{id curVal = [self.spouseName copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"SpouseName"];}
	{id curVal = [self.personalNotes copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"PersonalNotes"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"Children"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"Extensions"];}
	{id curVal = [self.photo toDictionary]; if (curVal!=nil) [dic setValue: curVal forKey: @"Photo"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.createdDateTime]; if (curVal!=nil) [dic setValue: curVal forKey: @"CreatedDateTime"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.lastModifiedDateTime]; if (curVal!=nil) [dic setValue: curVal forKey: @"LastModifiedDateTime"];}
	{id curVal = [self.changeKey copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"ChangeKey"];}
	{id curVal = nil/*MUST SERIALIZE COLLECTION!*/; if (curVal!=nil) [dic setValue: curVal forKey: @"Categories"];}
	{id curVal = [self._id copy]; if (curVal!=nil) [dic setValue: curVal forKey: @"Id"];}
    [dic setValue: @"#Microsoft.Graph.Contact" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.parentFolderId;
    if([self.updatedValues containsObject:@"ParentFolderId"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ParentFolderId"];
    }
    }
	{id curVal = self.birthday;
    if([self.updatedValues containsObject:@"Birthday"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"Birthday"];
    }
    }
	{id curVal = self.fileAs;
    if([self.updatedValues containsObject:@"FileAs"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"FileAs"];
    }
    }
	{id curVal = self.displayName;
    if([self.updatedValues containsObject:@"DisplayName"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"DisplayName"];
    }
    }
	{id curVal = self.givenName;
    if([self.updatedValues containsObject:@"GivenName"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"GivenName"];
    }
    }
	{id curVal = self.initials;
    if([self.updatedValues containsObject:@"Initials"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Initials"];
    }
    }
	{id curVal = self.middleName;
    if([self.updatedValues containsObject:@"MiddleName"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"MiddleName"];
    }
    }
	{id curVal = self.nickName;
    if([self.updatedValues containsObject:@"NickName"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"NickName"];
    }
    }
	{id curVal = self.surname;
    if([self.updatedValues containsObject:@"Surname"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Surname"];
    }
    }
	{id curVal = self.title;
    if([self.updatedValues containsObject:@"Title"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Title"];
    }
    }
	{id curVal = self.yomiGivenName;
    if([self.updatedValues containsObject:@"YomiGivenName"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"YomiGivenName"];
    }
    }
	{id curVal = self.yomiSurname;
    if([self.updatedValues containsObject:@"YomiSurname"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"YomiSurname"];
    }
    }
	{id curVal = self.yomiCompanyName;
    if([self.updatedValues containsObject:@"YomiCompanyName"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"YomiCompanyName"];
    }
    }
	{id curVal = self.generation;
    if([self.updatedValues containsObject:@"Generation"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Generation"];
    }
    }
	{id curVal = self.emailAddresses;
    if([self.updatedValues containsObject:@"EmailAddresses"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"EmailAddresses"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.imAddresses;
    if([self.updatedValues containsObject:@"ImAddresses"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ImAddresses"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.jobTitle;
    if([self.updatedValues containsObject:@"JobTitle"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"JobTitle"];
    }
    }
	{id curVal = self.companyName;
    if([self.updatedValues containsObject:@"CompanyName"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"CompanyName"];
    }
    }
	{id curVal = self.department;
    if([self.updatedValues containsObject:@"Department"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Department"];
    }
    }
	{id curVal = self.officeLocation;
    if([self.updatedValues containsObject:@"OfficeLocation"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"OfficeLocation"];
    }
    }
	{id curVal = self.profession;
    if([self.updatedValues containsObject:@"Profession"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Profession"];
    }
    }
	{id curVal = self.businessHomePage;
    if([self.updatedValues containsObject:@"BusinessHomePage"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"BusinessHomePage"];
    }
    }
	{id curVal = self.assistantName;
    if([self.updatedValues containsObject:@"AssistantName"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"AssistantName"];
    }
    }
	{id curVal = self.manager;
    if([self.updatedValues containsObject:@"Manager"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Manager"];
    }
    }
	{id curVal = self.homePhones;
    if([self.updatedValues containsObject:@"HomePhones"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"HomePhones"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.mobilePhone1;
    if([self.updatedValues containsObject:@"MobilePhone1"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"MobilePhone1"];
    }
    }
	{id curVal = self.businessPhones;
    if([self.updatedValues containsObject:@"BusinessPhones"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"BusinessPhones"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.homeAddress;
    if([self.updatedValues containsObject:@"HomeAddress"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"HomeAddress"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"HomeAddress"];
            }
        
            }}
	{id curVal = self.businessAddress;
    if([self.updatedValues containsObject:@"BusinessAddress"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"BusinessAddress"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"BusinessAddress"];
            }
        
            }}
	{id curVal = self.otherAddress;
    if([self.updatedValues containsObject:@"OtherAddress"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"OtherAddress"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"OtherAddress"];
            }
        
            }}
	{id curVal = self.spouseName;
    if([self.updatedValues containsObject:@"SpouseName"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"SpouseName"];
    }
    }
	{id curVal = self.personalNotes;
    if([self.updatedValues containsObject:@"PersonalNotes"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"PersonalNotes"];
    }
    }
	{id curVal = self.children;
    if([self.updatedValues containsObject:@"Children"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Children"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.extensions;
    if([self.updatedValues containsObject:@"Extensions"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"Extensions"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self.photo;
    if([self.updatedValues containsObject:@"Photo"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"Photo"];
    }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Photo"];
            }
        
            }}
	{id curVal = self.createdDateTime;
    if([self.updatedValues containsObject:@"CreatedDateTime"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"CreatedDateTime"];
    }
    }
	{id curVal = self.lastModifiedDateTime;
    if([self.updatedValues containsObject:@"LastModifiedDateTime"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"LastModifiedDateTime"];
    }
    }
	{id curVal = self.changeKey;
    if([self.updatedValues containsObject:@"ChangeKey"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ChangeKey"];
    }
    }
	{id curVal = self.categories;
    if([self.updatedValues containsObject:@"Categories"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Categories"];
    }
        else
    {
                
        //Check collection change:
        
            }}
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"Id"])
    {
        [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Id"];
    }
    }
    return dic;
}


/** Setter implementation for property parentFolderId
 *
 */
- (void) setParentFolderId: (NSString *) value {
    _parentFolderId = value;
    [self valueChangedFor:@"ParentFolderId"];
}
       
/** Setter implementation for property birthday
 *
 */
- (void) setBirthday: (NSDate *) value {
    _birthday = value;
    [self valueChangedFor:@"Birthday"];
}
       
/** Setter implementation for property fileAs
 *
 */
- (void) setFileAs: (NSString *) value {
    _fileAs = value;
    [self valueChangedFor:@"FileAs"];
}
       
/** Setter implementation for property displayName
 *
 */
- (void) setDisplayName: (NSString *) value {
    _displayName = value;
    [self valueChangedFor:@"DisplayName"];
}
       
/** Setter implementation for property givenName
 *
 */
- (void) setGivenName: (NSString *) value {
    _givenName = value;
    [self valueChangedFor:@"GivenName"];
}
       
/** Setter implementation for property initials
 *
 */
- (void) setInitials: (NSString *) value {
    _initials = value;
    [self valueChangedFor:@"Initials"];
}
       
/** Setter implementation for property middleName
 *
 */
- (void) setMiddleName: (NSString *) value {
    _middleName = value;
    [self valueChangedFor:@"MiddleName"];
}
       
/** Setter implementation for property nickName
 *
 */
- (void) setNickName: (NSString *) value {
    _nickName = value;
    [self valueChangedFor:@"NickName"];
}
       
/** Setter implementation for property surname
 *
 */
- (void) setSurname: (NSString *) value {
    _surname = value;
    [self valueChangedFor:@"Surname"];
}
       
/** Setter implementation for property title
 *
 */
- (void) setTitle: (NSString *) value {
    _title = value;
    [self valueChangedFor:@"Title"];
}
       
/** Setter implementation for property yomiGivenName
 *
 */
- (void) setYomiGivenName: (NSString *) value {
    _yomiGivenName = value;
    [self valueChangedFor:@"YomiGivenName"];
}
       
/** Setter implementation for property yomiSurname
 *
 */
- (void) setYomiSurname: (NSString *) value {
    _yomiSurname = value;
    [self valueChangedFor:@"YomiSurname"];
}
       
/** Setter implementation for property yomiCompanyName
 *
 */
- (void) setYomiCompanyName: (NSString *) value {
    _yomiCompanyName = value;
    [self valueChangedFor:@"YomiCompanyName"];
}
       
/** Setter implementation for property generation
 *
 */
- (void) setGeneration: (NSString *) value {
    _generation = value;
    [self valueChangedFor:@"Generation"];
}
       
/** Setter implementation for property emailAddresses
 *
 */
- (void) setEmailAddresses: (NSMutableArray *) value {
    _emailAddresses = value;
    [self valueChangedFor:@"EmailAddresses"];
}
       
/** Setter implementation for property imAddresses
 *
 */
- (void) setImAddresses: (NSMutableArray *) value {
    _imAddresses = value;
    [self valueChangedFor:@"ImAddresses"];
}
       
/** Setter implementation for property jobTitle
 *
 */
- (void) setJobTitle: (NSString *) value {
    _jobTitle = value;
    [self valueChangedFor:@"JobTitle"];
}
       
/** Setter implementation for property companyName
 *
 */
- (void) setCompanyName: (NSString *) value {
    _companyName = value;
    [self valueChangedFor:@"CompanyName"];
}
       
/** Setter implementation for property department
 *
 */
- (void) setDepartment: (NSString *) value {
    _department = value;
    [self valueChangedFor:@"Department"];
}
       
/** Setter implementation for property officeLocation
 *
 */
- (void) setOfficeLocation: (NSString *) value {
    _officeLocation = value;
    [self valueChangedFor:@"OfficeLocation"];
}
       
/** Setter implementation for property profession
 *
 */
- (void) setProfession: (NSString *) value {
    _profession = value;
    [self valueChangedFor:@"Profession"];
}
       
/** Setter implementation for property businessHomePage
 *
 */
- (void) setBusinessHomePage: (NSString *) value {
    _businessHomePage = value;
    [self valueChangedFor:@"BusinessHomePage"];
}
       
/** Setter implementation for property assistantName
 *
 */
- (void) setAssistantName: (NSString *) value {
    _assistantName = value;
    [self valueChangedFor:@"AssistantName"];
}
       
/** Setter implementation for property manager
 *
 */
- (void) setManager: (NSString *) value {
    _manager = value;
    [self valueChangedFor:@"Manager"];
}
       
/** Setter implementation for property homePhones
 *
 */
- (void) setHomePhones: (NSMutableArray *) value {
    _homePhones = value;
    [self valueChangedFor:@"HomePhones"];
}
       
/** Setter implementation for property mobilePhone1
 *
 */
- (void) setMobilePhone1: (NSString *) value {
    _mobilePhone1 = value;
    [self valueChangedFor:@"MobilePhone1"];
}
       
/** Setter implementation for property businessPhones
 *
 */
- (void) setBusinessPhones: (NSMutableArray *) value {
    _businessPhones = value;
    [self valueChangedFor:@"BusinessPhones"];
}
       
/** Setter implementation for property homeAddress
 *
 */
- (void) setHomeAddress: (MSGraphPhysicalAddress *) value {
    _homeAddress = value;
    [self valueChangedFor:@"HomeAddress"];
}
       
/** Setter implementation for property businessAddress
 *
 */
- (void) setBusinessAddress: (MSGraphPhysicalAddress *) value {
    _businessAddress = value;
    [self valueChangedFor:@"BusinessAddress"];
}
       
/** Setter implementation for property otherAddress
 *
 */
- (void) setOtherAddress: (MSGraphPhysicalAddress *) value {
    _otherAddress = value;
    [self valueChangedFor:@"OtherAddress"];
}
       
/** Setter implementation for property spouseName
 *
 */
- (void) setSpouseName: (NSString *) value {
    _spouseName = value;
    [self valueChangedFor:@"SpouseName"];
}
       
/** Setter implementation for property personalNotes
 *
 */
- (void) setPersonalNotes: (NSString *) value {
    _personalNotes = value;
    [self valueChangedFor:@"PersonalNotes"];
}
       
/** Setter implementation for property children
 *
 */
- (void) setChildren: (NSMutableArray *) value {
    _children = value;
    [self valueChangedFor:@"Children"];
}
       
/** Setter implementation for property extensions
 *
 */
- (void) setExtensions: (NSMutableArray *) value {
    _extensions = value;
    [self valueChangedFor:@"Extensions"];
}
       
/** Setter implementation for property photo
 *
 */
- (void) setPhoto: (MSGraphProfilePhoto *) value {
    _photo = value;
    [self valueChangedFor:@"Photo"];
}
       

@end