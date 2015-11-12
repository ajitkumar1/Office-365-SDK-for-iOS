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



#import "MSGraphFetchers.h"


/** Implementation for MSGraphDirectoryObjectOperations
 *
 */
@implementation MSGraphDirectoryObjectOperations


- (instancetype)initOperationWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {
 
    return [super initOperationWithUrl:urlComponent parent:parent];
}

- (void)checkMemberGroupsWithGroupIds:(NSString *)groupIds callback:(void (^)(NSString *, MSOrcError*))callback {


      NSString *groupIdsString = [groupIds copy];

    return [self checkMemberGroupsRawWithGroupIds:groupIdsString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            NSString * result = (NSString *)[returnValue copy];
            callback(result, e);
        } 
        else {

            callback(nil, e);
        }
    }];    
    
        
}

- (void)checkMemberGroupsRawWithGroupIds:(NSString *)groupIds callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  groupIds, @"groupIds", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"checkMemberGroups"];
        	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)getMemberGroupsWithSecurityEnabledOnly:(bool)securityEnabledOnly callback:(void (^)(NSString *, MSOrcError*))callback {


      NSString *securityEnabledOnlyString = [MSOrcObjectizer stringFromBool:securityEnabledOnly];

    return [self getMemberGroupsRawWithSecurityEnabledOnly:securityEnabledOnlyString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            NSString * result = (NSString *)[returnValue copy];
            callback(result, e);
        } 
        else {

            callback(nil, e);
        }
    }];    
    
        
}

- (void)getMemberGroupsRawWithSecurityEnabledOnly:(NSString *)securityEnabledOnly callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  securityEnabledOnly, @"securityEnabledOnly", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"getMemberGroups"];
        	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)getMemberObjectsWithSecurityEnabledOnly:(bool)securityEnabledOnly callback:(void (^)(NSString *, MSOrcError*))callback {


      NSString *securityEnabledOnlyString = [MSOrcObjectizer stringFromBool:securityEnabledOnly];

    return [self getMemberObjectsRawWithSecurityEnabledOnly:securityEnabledOnlyString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            NSString * result = (NSString *)[returnValue copy];
            callback(result, e);
        } 
        else {

            callback(nil, e);
        }
    }];    
    
        
}

- (void)getMemberObjectsRawWithSecurityEnabledOnly:(NSString *)securityEnabledOnly callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  securityEnabledOnly, @"securityEnabledOnly", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"getMemberObjects"];
        	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }

@end


