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



#import "MSGraphServiceModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSGraphServiceContact
 *
 */
@implementation MSGraphServiceContact


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"ParentFolderId", @"parentFolderId", @"Birthday", @"birthday", @"FileAs", @"fileAs", @"DisplayName", @"displayName", @"GivenName", @"givenName", @"Initials", @"initials", @"MiddleName", @"middleName", @"NickName", @"nickName", @"Surname", @"surname", @"Title", @"title", @"YomiGivenName", @"yomiGivenName", @"YomiSurname", @"yomiSurname", @"YomiCompanyName", @"yomiCompanyName", @"Generation", @"generation", @"EmailAddresses", @"emailAddresses", @"ImAddresses", @"imAddresses", @"JobTitle", @"jobTitle", @"CompanyName", @"companyName", @"Department", @"department", @"OfficeLocation", @"officeLocation", @"Profession", @"profession", @"BusinessHomePage", @"businessHomePage", @"AssistantName", @"assistantName", @"Manager", @"manager", @"HomePhones", @"homePhones", @"MobilePhone1", @"mobilePhone1", @"BusinessPhones", @"businessPhones", @"HomeAddress", @"homeAddress", @"BusinessAddress", @"businessAddress", @"OtherAddress", @"otherAddress", @"SpouseName", @"spouseName", @"PersonalNotes", @"personalNotes", @"Children", @"children", @"Photo", @"photo", @"CreatedDateTime", @"createdDateTime", @"LastModifiedDateTime", @"lastModifiedDateTime", @"ChangeKey", @"changeKey", @"Categories", @"categories", @"id", @"_id", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.contact";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_parentFolderId = (![dic objectForKey: @"ParentFolderId"] || [ [dic objectForKey: @"ParentFolderId"] isKindOfClass:[NSNull class]] )?_parentFolderId:[[dic objectForKey: @"ParentFolderId"] copy];
		_birthday = (![dic objectForKey: @"Birthday"] || [ [dic objectForKey: @"Birthday"] isKindOfClass:[NSNull class]] )?_birthday:[MSOrcObjectizer dateFromString:[dic objectForKey: @"Birthday"]];
		_fileAs = (![dic objectForKey: @"FileAs"] || [ [dic objectForKey: @"FileAs"] isKindOfClass:[NSNull class]] )?_fileAs:[[dic objectForKey: @"FileAs"] copy];
		_displayName = (![dic objectForKey: @"DisplayName"] || [ [dic objectForKey: @"DisplayName"] isKindOfClass:[NSNull class]] )?_displayName:[[dic objectForKey: @"DisplayName"] copy];
		_givenName = (![dic objectForKey: @"GivenName"] || [ [dic objectForKey: @"GivenName"] isKindOfClass:[NSNull class]] )?_givenName:[[dic objectForKey: @"GivenName"] copy];
		_initials = (![dic objectForKey: @"Initials"] || [ [dic objectForKey: @"Initials"] isKindOfClass:[NSNull class]] )?_initials:[[dic objectForKey: @"Initials"] copy];
		_middleName = (![dic objectForKey: @"MiddleName"] || [ [dic objectForKey: @"MiddleName"] isKindOfClass:[NSNull class]] )?_middleName:[[dic objectForKey: @"MiddleName"] copy];
		_nickName = (![dic objectForKey: @"NickName"] || [ [dic objectForKey: @"NickName"] isKindOfClass:[NSNull class]] )?_nickName:[[dic objectForKey: @"NickName"] copy];
		_surname = (![dic objectForKey: @"Surname"] || [ [dic objectForKey: @"Surname"] isKindOfClass:[NSNull class]] )?_surname:[[dic objectForKey: @"Surname"] copy];
		_title = (![dic objectForKey: @"Title"] || [ [dic objectForKey: @"Title"] isKindOfClass:[NSNull class]] )?_title:[[dic objectForKey: @"Title"] copy];
		_yomiGivenName = (![dic objectForKey: @"YomiGivenName"] || [ [dic objectForKey: @"YomiGivenName"] isKindOfClass:[NSNull class]] )?_yomiGivenName:[[dic objectForKey: @"YomiGivenName"] copy];
		_yomiSurname = (![dic objectForKey: @"YomiSurname"] || [ [dic objectForKey: @"YomiSurname"] isKindOfClass:[NSNull class]] )?_yomiSurname:[[dic objectForKey: @"YomiSurname"] copy];
		_yomiCompanyName = (![dic objectForKey: @"YomiCompanyName"] || [ [dic objectForKey: @"YomiCompanyName"] isKindOfClass:[NSNull class]] )?_yomiCompanyName:[[dic objectForKey: @"YomiCompanyName"] copy];
		_generation = (![dic objectForKey: @"Generation"] || [ [dic objectForKey: @"Generation"] isKindOfClass:[NSNull class]] )?_generation:[[dic objectForKey: @"Generation"] copy];

        if([dic objectForKey: @"EmailAddresses"] != [NSNull null]){
            _emailAddresses = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"EmailAddresses"]) {
                [_emailAddresses addObject:[[MSGraphServiceEmailAddress alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_emailAddresses resetChangedFlag];
        }
        

        if([dic objectForKey: @"ImAddresses"] != [NSNull null]){
            _imAddresses = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"ImAddresses"]) {
                [_imAddresses addObject:[object copy]];
            }
            
            [(MSOrcChangesTrackingArray *)_imAddresses resetChangedFlag];
        }
        
		_jobTitle = (![dic objectForKey: @"JobTitle"] || [ [dic objectForKey: @"JobTitle"] isKindOfClass:[NSNull class]] )?_jobTitle:[[dic objectForKey: @"JobTitle"] copy];
		_companyName = (![dic objectForKey: @"CompanyName"] || [ [dic objectForKey: @"CompanyName"] isKindOfClass:[NSNull class]] )?_companyName:[[dic objectForKey: @"CompanyName"] copy];
		_department = (![dic objectForKey: @"Department"] || [ [dic objectForKey: @"Department"] isKindOfClass:[NSNull class]] )?_department:[[dic objectForKey: @"Department"] copy];
		_officeLocation = (![dic objectForKey: @"OfficeLocation"] || [ [dic objectForKey: @"OfficeLocation"] isKindOfClass:[NSNull class]] )?_officeLocation:[[dic objectForKey: @"OfficeLocation"] copy];
		_profession = (![dic objectForKey: @"Profession"] || [ [dic objectForKey: @"Profession"] isKindOfClass:[NSNull class]] )?_profession:[[dic objectForKey: @"Profession"] copy];
		_businessHomePage = (![dic objectForKey: @"BusinessHomePage"] || [ [dic objectForKey: @"BusinessHomePage"] isKindOfClass:[NSNull class]] )?_businessHomePage:[[dic objectForKey: @"BusinessHomePage"] copy];
		_assistantName = (![dic objectForKey: @"AssistantName"] || [ [dic objectForKey: @"AssistantName"] isKindOfClass:[NSNull class]] )?_assistantName:[[dic objectForKey: @"AssistantName"] copy];
		_manager = (![dic objectForKey: @"Manager"] || [ [dic objectForKey: @"Manager"] isKindOfClass:[NSNull class]] )?_manager:[[dic objectForKey: @"Manager"] copy];

        if([dic objectForKey: @"HomePhones"] != [NSNull null]){
            _homePhones = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"HomePhones"]) {
                [_homePhones addObject:[object copy]];
            }
            
            [(MSOrcChangesTrackingArray *)_homePhones resetChangedFlag];
        }
        
		_mobilePhone1 = (![dic objectForKey: @"MobilePhone1"] || [ [dic objectForKey: @"MobilePhone1"] isKindOfClass:[NSNull class]] )?_mobilePhone1:[[dic objectForKey: @"MobilePhone1"] copy];

        if([dic objectForKey: @"BusinessPhones"] != [NSNull null]){
            _businessPhones = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"BusinessPhones"]) {
                [_businessPhones addObject:[object copy]];
            }
            
            [(MSOrcChangesTrackingArray *)_businessPhones resetChangedFlag];
        }
        
		_homeAddress = (![dic objectForKey: @"HomeAddress"] || [ [dic objectForKey: @"HomeAddress"] isKindOfClass:[NSNull class]] )?_homeAddress:[[MSGraphServicePhysicalAddress alloc] initWithDictionary: [dic objectForKey: @"HomeAddress"]];
		_businessAddress = (![dic objectForKey: @"BusinessAddress"] || [ [dic objectForKey: @"BusinessAddress"] isKindOfClass:[NSNull class]] )?_businessAddress:[[MSGraphServicePhysicalAddress alloc] initWithDictionary: [dic objectForKey: @"BusinessAddress"]];
		_otherAddress = (![dic objectForKey: @"OtherAddress"] || [ [dic objectForKey: @"OtherAddress"] isKindOfClass:[NSNull class]] )?_otherAddress:[[MSGraphServicePhysicalAddress alloc] initWithDictionary: [dic objectForKey: @"OtherAddress"]];
		_spouseName = (![dic objectForKey: @"SpouseName"] || [ [dic objectForKey: @"SpouseName"] isKindOfClass:[NSNull class]] )?_spouseName:[[dic objectForKey: @"SpouseName"] copy];
		_personalNotes = (![dic objectForKey: @"PersonalNotes"] || [ [dic objectForKey: @"PersonalNotes"] isKindOfClass:[NSNull class]] )?_personalNotes:[[dic objectForKey: @"PersonalNotes"] copy];

        if([dic objectForKey: @"Children"] != [NSNull null]){
            _children = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"Children"]) {
                [_children addObject:[object copy]];
            }
            
            [(MSOrcChangesTrackingArray *)_children resetChangedFlag];
        }
        
		_photo = (![dic objectForKey: @"Photo"] || [ [dic objectForKey: @"Photo"] isKindOfClass:[NSNull class]] )?_photo:[[MSGraphServiceProfilePhoto alloc] initWithDictionary: [dic objectForKey: @"Photo"]];
		self.createdDateTime = (![dic objectForKey: @"CreatedDateTime"] || [ [dic objectForKey: @"CreatedDateTime"] isKindOfClass:[NSNull class]] )?self.createdDateTime:[MSOrcObjectizer dateFromString:[dic objectForKey: @"CreatedDateTime"]];
		self.lastModifiedDateTime = (![dic objectForKey: @"LastModifiedDateTime"] || [ [dic objectForKey: @"LastModifiedDateTime"] isKindOfClass:[NSNull class]] )?self.lastModifiedDateTime:[MSOrcObjectizer dateFromString:[dic objectForKey: @"LastModifiedDateTime"]];
		self.changeKey = (![dic objectForKey: @"ChangeKey"] || [ [dic objectForKey: @"ChangeKey"] isKindOfClass:[NSNull class]] )?self.changeKey:[[dic objectForKey: @"ChangeKey"] copy];

        if([dic objectForKey: @"Categories"] != [NSNull null]){
            self.categories = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"Categories"]) {
                [self.categories addObject:[object copy]];
            }
            
            [(MSOrcChangesTrackingArray *)self.categories resetChangedFlag];
        }
        
		self._id = (![dic objectForKey: @"id"] || [ [dic objectForKey: @"id"] isKindOfClass:[NSNull class]] )?self._id:[[dic objectForKey: @"id"] copy];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.parentFolderId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"ParentFolderId"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.birthday];if (curVal!=nil) [dic setValue: curVal forKey: @"Birthday"];}
	{id curVal = [self.fileAs copy];if (curVal!=nil) [dic setValue: curVal forKey: @"FileAs"];}
	{id curVal = [self.displayName copy];if (curVal!=nil) [dic setValue: curVal forKey: @"DisplayName"];}
	{id curVal = [self.givenName copy];if (curVal!=nil) [dic setValue: curVal forKey: @"GivenName"];}
	{id curVal = [self.initials copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Initials"];}
	{id curVal = [self.middleName copy];if (curVal!=nil) [dic setValue: curVal forKey: @"MiddleName"];}
	{id curVal = [self.nickName copy];if (curVal!=nil) [dic setValue: curVal forKey: @"NickName"];}
	{id curVal = [self.surname copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Surname"];}
	{id curVal = [self.title copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Title"];}
	{id curVal = [self.yomiGivenName copy];if (curVal!=nil) [dic setValue: curVal forKey: @"YomiGivenName"];}
	{id curVal = [self.yomiSurname copy];if (curVal!=nil) [dic setValue: curVal forKey: @"YomiSurname"];}
	{id curVal = [self.yomiCompanyName copy];if (curVal!=nil) [dic setValue: curVal forKey: @"YomiCompanyName"];}
	{id curVal = [self.generation copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Generation"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.emailAddresses) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"EmailAddresses"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.imAddresses) {
       [curVal addObject:[obj copy]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"ImAddresses"];}
	{id curVal = [self.jobTitle copy];if (curVal!=nil) [dic setValue: curVal forKey: @"JobTitle"];}
	{id curVal = [self.companyName copy];if (curVal!=nil) [dic setValue: curVal forKey: @"CompanyName"];}
	{id curVal = [self.department copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Department"];}
	{id curVal = [self.officeLocation copy];if (curVal!=nil) [dic setValue: curVal forKey: @"OfficeLocation"];}
	{id curVal = [self.profession copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Profession"];}
	{id curVal = [self.businessHomePage copy];if (curVal!=nil) [dic setValue: curVal forKey: @"BusinessHomePage"];}
	{id curVal = [self.assistantName copy];if (curVal!=nil) [dic setValue: curVal forKey: @"AssistantName"];}
	{id curVal = [self.manager copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Manager"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.homePhones) {
       [curVal addObject:[obj copy]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"HomePhones"];}
	{id curVal = [self.mobilePhone1 copy];if (curVal!=nil) [dic setValue: curVal forKey: @"MobilePhone1"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.businessPhones) {
       [curVal addObject:[obj copy]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"BusinessPhones"];}
	{id curVal = [self.homeAddress toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"HomeAddress"];}
	{id curVal = [self.businessAddress toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"BusinessAddress"];}
	{id curVal = [self.otherAddress toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"OtherAddress"];}
	{id curVal = [self.spouseName copy];if (curVal!=nil) [dic setValue: curVal forKey: @"SpouseName"];}
	{id curVal = [self.personalNotes copy];if (curVal!=nil) [dic setValue: curVal forKey: @"PersonalNotes"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.children) {
       [curVal addObject:[obj copy]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"Children"];}
	{id curVal = [self.photo toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"Photo"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.createdDateTime];if (curVal!=nil) [dic setValue: curVal forKey: @"CreatedDateTime"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.lastModifiedDateTime];if (curVal!=nil) [dic setValue: curVal forKey: @"LastModifiedDateTime"];}
	{id curVal = [self.changeKey copy];if (curVal!=nil) [dic setValue: curVal forKey: @"ChangeKey"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.categories) {
       [curVal addObject:[obj copy]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"Categories"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
    [dic setValue: @"#microsoft.graph.contact" forKey: @"@odata.type"];

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
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"EmailAddresses"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.emailAddresses) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"EmailAddresses"];
        }
        
            }}
	{id curVal = self.imAddresses;
    if([self.updatedValues containsObject:@"ImAddresses"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj copy]];
    }
    
            [dic setValue: curArray forKey: @"ImAddresses"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.imAddresses) {
       [curArray addObject:[obj copy]];
    }
    
                 [dic setValue: curArray forKey: @"ImAddresses"];
        }
        
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
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj copy]];
    }
    
            [dic setValue: curArray forKey: @"HomePhones"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.homePhones) {
       [curArray addObject:[obj copy]];
    }
    
                 [dic setValue: curArray forKey: @"HomePhones"];
        }
        
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
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj copy]];
    }
    
            [dic setValue: curArray forKey: @"BusinessPhones"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.businessPhones) {
       [curArray addObject:[obj copy]];
    }
    
                 [dic setValue: curArray forKey: @"BusinessPhones"];
        }
        
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
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj copy]];
    }
    
            [dic setValue: curArray forKey: @"Children"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.children) {
       [curArray addObject:[obj copy]];
    }
    
                 [dic setValue: curArray forKey: @"Children"];
        }
        
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
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj copy]];
    }
    
            [dic setValue: curArray forKey: @"Categories"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.categories) {
       [curArray addObject:[obj copy]];
    }
    
                 [dic setValue: curArray forKey: @"Categories"];
        }
        
            }}
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
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
- (void) setHomeAddress: (MSGraphServicePhysicalAddress *) value {
    _homeAddress = value;
    [self valueChangedFor:@"HomeAddress"];
}
       
/** Setter implementation for property businessAddress
 *
 */
- (void) setBusinessAddress: (MSGraphServicePhysicalAddress *) value {
    _businessAddress = value;
    [self valueChangedFor:@"BusinessAddress"];
}
       
/** Setter implementation for property otherAddress
 *
 */
- (void) setOtherAddress: (MSGraphServicePhysicalAddress *) value {
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
       
/** Setter implementation for property photo
 *
 */
- (void) setPhoto: (MSGraphServiceProfilePhoto *) value {
    _photo = value;
    [self valueChangedFor:@"Photo"];
}
       

@end
