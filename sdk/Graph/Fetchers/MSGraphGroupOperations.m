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


/** Implementation for MSGraphGroupOperations
 *
 */
@implementation MSGraphGroupOperations


- (instancetype)initOperationWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {
 
    return [super initOperationWithUrl:urlComponent parent:parent];
}

- (void)subscribeByMailWithCallback:(void (^)(int, MSOrcError*))callback {


        return [self subscribeByMailRawWithCallback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            int result = (int)[MSOrcObjectizer objectizeFromString:returnValue toType:nil];
            callback(result, e);
        } 
        else {

            callback((int)[returnValue integerValue], e);
        }
    }];    
    
        
}

- (void)subscribeByMailRawWithCallback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
        
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"SubscribeByMail"];
        	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)unsubscribeByMailWithCallback:(void (^)(int, MSOrcError*))callback {


        return [self unsubscribeByMailRawWithCallback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            int result = (int)[MSOrcObjectizer objectizeFromString:returnValue toType:nil];
            callback(result, e);
        } 
        else {

            callback((int)[returnValue integerValue], e);
        }
    }];    
    
        
}

- (void)unsubscribeByMailRawWithCallback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
        
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"UnsubscribeByMail"];
        	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)addFavoriteWithCallback:(void (^)(int, MSOrcError*))callback {


        return [self addFavoriteRawWithCallback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            int result = (int)[MSOrcObjectizer objectizeFromString:returnValue toType:nil];
            callback(result, e);
        } 
        else {

            callback((int)[returnValue integerValue], e);
        }
    }];    
    
        
}

- (void)addFavoriteRawWithCallback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
        
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"AddFavorite"];
        	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)removeFavoriteWithCallback:(void (^)(int, MSOrcError*))callback {


        return [self removeFavoriteRawWithCallback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            int result = (int)[MSOrcObjectizer objectizeFromString:returnValue toType:nil];
            callback(result, e);
        } 
        else {

            callback((int)[returnValue integerValue], e);
        }
    }];    
    
        
}

- (void)removeFavoriteRawWithCallback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
        
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"RemoveFavorite"];
        	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)resetUnseenCountWithCallback:(void (^)(int, MSOrcError*))callback {


        return [self resetUnseenCountRawWithCallback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            int result = (int)[MSOrcObjectizer objectizeFromString:returnValue toType:nil];
            callback(result, e);
        } 
        else {

            callback((int)[returnValue integerValue], e);
        }
    }];    
    
        
}

- (void)resetUnseenCountRawWithCallback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
        
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"ResetUnseenCount"];
        	
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


