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


/** Implementation for MSGraphServiceMessageOperations
 *
 */
@implementation MSGraphServiceMessageOperations


- (instancetype)initOperationWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {
 
    return [super initOperationWithUrl:urlComponent parent:parent];
}

- (void)copyWithDestinationId:(NSString *)destinationId callback:(void (^)(MSGraphServiceMessage *, MSOrcError*))callback {


      NSString *destinationIdString = [NSString stringWithFormat:@"\"%@\"", destinationId];

    return [self copyRawWithDestinationId:destinationIdString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            MSGraphServiceMessage * result = (MSGraphServiceMessage *)[MSOrcObjectizer objectizeFromString:returnValue toType: [MSGraphServiceMessage  class]];
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
	 	[request.url appendPathComponent:@"microsoft.graph.Copy"];
     	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)moveWithDestinationId:(NSString *)destinationId callback:(void (^)(MSGraphServiceMessage *, MSOrcError*))callback {


      NSString *destinationIdString = [NSString stringWithFormat:@"\"%@\"", destinationId];

    return [self moveRawWithDestinationId:destinationIdString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            MSGraphServiceMessage * result = (MSGraphServiceMessage *)[MSOrcObjectizer objectizeFromString:returnValue toType: [MSGraphServiceMessage  class]];
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
	 	[request.url appendPathComponent:@"microsoft.graph.Move"];
     	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)createReplyWithCallback:(void (^)(MSGraphServiceMessage *, MSOrcError*))callback {


        return [self createReplyRawWithCallback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            MSGraphServiceMessage * result = (MSGraphServiceMessage *)[MSOrcObjectizer objectizeFromString:returnValue toType: [MSGraphServiceMessage  class]];
            callback(result, e);
        } 
        else {

            callback(nil, e);
        }
    }];    
    
        
}

- (void)createReplyRawWithCallback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
        
    [request setVerb:HTTP_VERB_POST];
	 	[request.url appendPathComponent:@"microsoft.graph.CreateReply"];
     	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)createReplyAllWithCallback:(void (^)(MSGraphServiceMessage *, MSOrcError*))callback {


        return [self createReplyAllRawWithCallback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            MSGraphServiceMessage * result = (MSGraphServiceMessage *)[MSOrcObjectizer objectizeFromString:returnValue toType: [MSGraphServiceMessage  class]];
            callback(result, e);
        } 
        else {

            callback(nil, e);
        }
    }];    
    
        
}

- (void)createReplyAllRawWithCallback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
        
    [request setVerb:HTTP_VERB_POST];
	 	[request.url appendPathComponent:@"microsoft.graph.CreateReplyAll"];
     	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)createForwardWithCallback:(void (^)(MSGraphServiceMessage *, MSOrcError*))callback {


        return [self createForwardRawWithCallback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            MSGraphServiceMessage * result = (MSGraphServiceMessage *)[MSOrcObjectizer objectizeFromString:returnValue toType: [MSGraphServiceMessage  class]];
            callback(result, e);
        } 
        else {

            callback(nil, e);
        }
    }];    
    
        
}

- (void)createForwardRawWithCallback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
        
    [request setVerb:HTTP_VERB_POST];
	 	[request.url appendPathComponent:@"microsoft.graph.CreateForward"];
     	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)replyWithComment:(NSString *)comment callback:(void (^)(int, MSOrcError*))callback {


      NSString *commentString = [NSString stringWithFormat:@"\"%@\"", comment];

    return [self replyRawWithComment:commentString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            int result = (int)[MSOrcObjectizer intFromString:returnValue];
            callback(result, e);
        } 
        else {

            callback((int)[returnValue integerValue], e);
        }
    }];    
    
        
}

- (void)replyRawWithComment:(NSString *)comment callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  comment, @"Comment", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	 	[request.url appendPathComponent:@"microsoft.graph.Reply"];
     	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)replyAllWithComment:(NSString *)comment callback:(void (^)(int, MSOrcError*))callback {


      NSString *commentString = [NSString stringWithFormat:@"\"%@\"", comment];

    return [self replyAllRawWithComment:commentString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            int result = (int)[MSOrcObjectizer intFromString:returnValue];
            callback(result, e);
        } 
        else {

            callback((int)[returnValue integerValue], e);
        }
    }];    
    
        
}

- (void)replyAllRawWithComment:(NSString *)comment callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  comment, @"Comment", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	 	[request.url appendPathComponent:@"microsoft.graph.ReplyAll"];
     	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)forwardWithComment:(NSString *)comment toRecipients:(MSGraphServiceRecipient *)toRecipients callback:(void (^)(int, MSOrcError*))callback {


      NSString *commentString = [NSString stringWithFormat:@"\"%@\"", comment];

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
	 	[request.url appendPathComponent:@"microsoft.graph.Forward"];
     	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)sendWithCallback:(void (^)(int, MSOrcError*))callback {


        return [self sendRawWithCallback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            int result = (int)[MSOrcObjectizer intFromString:returnValue];
            callback(result, e);
        } 
        else {

            callback((int)[returnValue integerValue], e);
        }
    }];    
    
        
}

- (void)sendRawWithCallback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
        
    [request setVerb:HTTP_VERB_POST];
	 	[request.url appendPathComponent:@"microsoft.graph.Send"];
     	
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


