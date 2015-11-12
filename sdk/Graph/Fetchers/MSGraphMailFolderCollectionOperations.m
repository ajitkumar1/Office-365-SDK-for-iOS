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



#import "MSGraphMailFolder.h"
#import "MSGraphFetchers.h"


/** Implementation for MSGraphMailFolderCollectionOperations
 *
 */
@implementation MSGraphMailFolderCollectionOperations

- (void)copyWithDestinationId:(NSString *)destinationId callback:(void (^)(MSGraphMailFolder *, MSOrcError*))callback {


      NSString *destinationIdString = [destinationId copy];

    return [self copyRawWithDestinationId:destinationIdString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            MSGraphMailFolder * result = (MSGraphMailFolder *)[MSOrcObjectizer objectizeFromString:returnValue];
            callback(result, e);
        } 
        else {

            callback(nil, e);
        }
    }];    
    
        
}

- (void)copyRawWithDestinationId:(NSString *)destinationId callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  destinationId, @"DestinationId", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"Copy"];
        	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)moveWithDestinationId:(NSString *)destinationId callback:(void (^)(MSGraphMailFolder *, MSOrcError*))callback {


      NSString *destinationIdString = [destinationId copy];

    return [self moveRawWithDestinationId:destinationIdString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            MSGraphMailFolder * result = (MSGraphMailFolder *)[MSOrcObjectizer objectizeFromString:returnValue];
            callback(result, e);
        } 
        else {

            callback(nil, e);
        }
    }];    
    
        
}

- (void)moveRawWithDestinationId:(NSString *)destinationId callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  destinationId, @"DestinationId", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"Move"];
        	
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
