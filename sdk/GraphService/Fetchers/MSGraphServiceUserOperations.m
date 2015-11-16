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



#import "MSGraphServiceFetchers.h"


/** Implementation for MSGraphServiceUserOperations
 *
 */
@implementation MSGraphServiceUserOperations


- (instancetype)initOperationWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {
 
    return [super initOperationWithUrl:urlComponent parent:parent];
}

- (void)assignLicenseWithAddLicenses:(MSGraphServiceAssignedLicense *)addLicenses removeLicenses:(NSString *)removeLicenses callback:(void (^)(MSGraphServiceUser *, MSOrcError*))callback {


      NSString *addLicensesString = [MSOrcObjectizer deobjectizeToString:addLicenses];

  NSString *removeLicensesString = [NSString stringWithFormat:@"\"%@\"", removeLicenses];

    return [self assignLicenseRawWithAddLicenses:addLicensesString removeLicenses:removeLicensesString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            MSGraphServiceUser * result = (MSGraphServiceUser *)[MSOrcObjectizer objectizeFromString:returnValue toType: [MSGraphServiceUser  class]];
            callback(result, e);
        } 
        else {

            callback(nil, e);
        }
    }];    
    
        
}

- (void)assignLicenseRawWithAddLicenses:(NSString *)addLicenses removeLicenses:(NSString *)removeLicenses callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  addLicenses, @"addLicenses", removeLicenses, @"removeLicenses", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	 	[request.url appendPathComponent:@"microsoft.graph.assignLicense"];
     	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)changePasswordWithCurrentPassword:(NSString *)currentPassword newPassword:(NSString *)newPassword callback:(void (^)(int, MSOrcError*))callback {


      NSString *currentPasswordString = [NSString stringWithFormat:@"\"%@\"", currentPassword];

  NSString *newPasswordString = [NSString stringWithFormat:@"\"%@\"", newPassword];

    return [self changePasswordRawWithCurrentPassword:currentPasswordString newPassword:newPasswordString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            int result = (int)[MSOrcObjectizer intFromString:returnValue];
            callback(result, e);
        } 
        else {

            callback((int)[returnValue integerValue], e);
        }
    }];    
    
        
}

- (void)changePasswordRawWithCurrentPassword:(NSString *)currentPassword newPassword:(NSString *)newPassword callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  currentPassword, @"currentPassword", newPassword, @"newPassword", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	 	[request.url appendPathComponent:@"microsoft.graph.changePassword"];
     	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)sendMailWithMessage:(MSGraphServiceMessage *)message saveToSentItems:(bool)saveToSentItems callback:(void (^)(int, MSOrcError*))callback {


      NSString *messageString = [MSOrcObjectizer deobjectizeToString:message];

  NSString *saveToSentItemsString = [MSOrcObjectizer stringFromBool:saveToSentItems];

    return [self sendMailRawWithMessage:messageString saveToSentItems:saveToSentItemsString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            int result = (int)[MSOrcObjectizer intFromString:returnValue];
            callback(result, e);
        } 
        else {

            callback((int)[returnValue integerValue], e);
        }
    }];    
    
        
}

- (void)sendMailRawWithMessage:(NSString *)message saveToSentItems:(NSString *)saveToSentItems callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  message, @"Message", saveToSentItems, @"SaveToSentItems", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	 	[request.url appendPathComponent:@"microsoft.graph.SendMail"];
     	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)reminderViewWithStartDateTime:(NSString *)startDateTime endDateTime:(NSString *)endDateTime callback:(void (^)(MSGraphServiceReminder *, MSOrcError*))callback {


	id<MSOrcRequest> request = [self.resolver createOrcRequest];
	NSDictionary *params = [[NSDictionary alloc] initWithObjectsAndKeys:  startDateTime, @"StartDateTime", endDateTime, @"EndDateTime", nil ] ;
	
	NSString *parameters = [MSOrcBaseContainer getFunctionParameters:params];

	[request.url appendPathComponent:[[NSString alloc] initWithFormat:@"ReminderView(%@)",parameters]];
	[request setVerb:HTTP_VERB_POST];

	return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
       
        if (e == nil) {
            MSGraphServiceReminder * result = (MSGraphServiceReminder *)[MSOrcObjectizer objectizeFromString:[[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding] toType: [MSGraphServiceReminder  class]];
            callback(result, e);
        }
        else {

            callback(nil, e);
        }
        
    }];
    
        
}


@end


