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



#import "MSOneNotePage.h"
#import "MSOneNoteFetchers.h"


/** Implementation for MSOneNotePageCollectionOperations
 *
 */
@implementation MSOneNotePageCollectionOperations

- (void)patchContentWithCommands:(MSOneNotePatchContentCommand *)commands callback:(void (^)(int, MSOrcError*))callback {


      NSString *commandsString = [MSOrcObjectizer deobjectizeToString: commands ];

    return [self patchContentRawWithCommands:commandsString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            int result = (int)[MSOrcObjectizer objectizeFromString:returnValue toType:nil];
            callback(result, e);
        } 
        else {

            callback((int)[returnValue integerValue], e);
        }
    }];    
    
        
}

- (void)patchContentRawWithCommands:(NSString *)commands callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  commands, @"commands", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"PatchContent"];
        	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)copyToSectionWithId:(NSString *)_id siteCollectionId:(NSString *)siteCollectionId siteId:(NSString *)siteId groupId:(NSString *)groupId callback:(void (^)(MSOneNoteCopyStatusModel *, MSOrcError*))callback {


      NSString *_idString = [MSOrcObjectizer deobjectizeToString: _id ];

  NSString *siteCollectionIdString = [MSOrcObjectizer deobjectizeToString: siteCollectionId ];

  NSString *siteIdString = [MSOrcObjectizer deobjectizeToString: siteId ];

  NSString *groupIdString = [MSOrcObjectizer deobjectizeToString: groupId ];

    return [self copyToSectionRawWithId:_idString siteCollectionId:siteCollectionIdString siteId:siteIdString groupId:groupIdString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            MSOneNoteCopyStatusModel * result = (MSOneNoteCopyStatusModel *)[MSOrcObjectizer objectizeFromString:returnValue toType:[MSOneNoteCopyStatusModel class]];
            callback(result, e);
        } 
        else {

            callback(nil, e);
        }
    }];    
    
        
}

- (void)copyToSectionRawWithId:(NSString *)_id siteCollectionId:(NSString *)siteCollectionId siteId:(NSString *)siteId groupId:(NSString *)groupId callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  _id, @"id", siteCollectionId, @"siteCollectionId", siteId, @"siteId", groupId, @"groupId", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"CopyToSection"];
        	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)thumbnailWithCallback:(void (^)(NSStream *, MSOrcError*))callback {


        return [self thumbnailRawWithCallback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            NSStream * result = (NSStream *)[MSOrcObjectizer objectizeFromString:returnValue toType:[NSStream class]];
            callback(result, e);
        } 
        else {

            callback(nil, e);
        }
    }];    
    
        
}

- (void)thumbnailRawWithCallback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
        
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"Thumbnail"];
        	
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
