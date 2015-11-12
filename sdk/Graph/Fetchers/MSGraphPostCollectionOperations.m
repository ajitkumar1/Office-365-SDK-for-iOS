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



#import "MSGraphPost.h"
#import "MSGraphFetchers.h"


/** Implementation for MSGraphPostCollectionOperations
 *
 */
@implementation MSGraphPostCollectionOperations

- (void)forwardWithComment:(NSString *)comment toRecipients:(MSGraphRecipient *)toRecipients callback:(void (^)(int, MSOrcError*))callback {


      NSString *commentString = [comment copy];

  NSString *toRecipientsString = [MSOrcObjectizer deobjectizeToString:toRecipients];

    return [self forwardRawWithComment:commentString toRecipients:toRecipientsString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            int result = (int)[MSOrcObjectizer intFromString:returnValue];
            callback(result, e);
        } 
        else {

            callback((int)[returnValue integerValue], e);
        }
    }];    
    
        
}

- (void)forwardRawWithComment:(NSString *)comment toRecipients:(NSString *)toRecipients callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  comment, @"Comment", toRecipients, @"ToRecipients", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"Forward"];
        	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)replyWithPost:(MSGraphPost *)post callback:(void (^)(int, MSOrcError*))callback {


      NSString *postString = [MSOrcObjectizer deobjectizeToString:post];

    return [self replyRawWithPost:postString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            int result = (int)[MSOrcObjectizer intFromString:returnValue];
            callback(result, e);
        } 
        else {

            callback((int)[returnValue integerValue], e);
        }
    }];    
    
        
}

- (void)replyRawWithPost:(NSString *)post callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  post, @"Post", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"Reply"];
        	
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
