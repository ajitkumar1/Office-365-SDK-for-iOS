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


#import "MSOneNoteApiFetchers.h"
#import "core/core.h"

@implementation MSOneNoteApiNotebookFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSOneNoteApiNotebook class]]) {

		_operations = [[MSOneNoteApiNotebookOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSOneNoteApiNotebook *Notebook, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSOneNoteApiNotebookFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSOneNoteApiNotebookFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

- (MSOneNoteApiNotebookFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSOneNoteApiNotebookFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (void) readWithCallback:(void (^)(MSOneNoteApiNotebook *Notebook, MSOrcError *error))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSOneNoteApiSectionCollectionFetcher *)sections {

    return [[MSOneNoteApiSectionCollectionFetcher alloc] initWithUrl:@"sections" parent:self asClass:[MSOneNoteApiSection class]];
}

- (MSOneNoteApiSectionFetcher *)sectionsById:(NSString *)identifier {

    return [[[MSOneNoteApiSectionCollectionFetcher alloc] initWithUrl:@"sections" parent:self asClass:[MSOneNoteApiSection class]] getById:identifier];

}

- (MSOneNoteApiSectionGroupCollectionFetcher *)sectionGroups {

    return [[MSOneNoteApiSectionGroupCollectionFetcher alloc] initWithUrl:@"sectionGroups" parent:self asClass:[MSOneNoteApiSectionGroup class]];
}

- (MSOneNoteApiSectionGroupFetcher *)sectionGroupsById:(NSString *)identifier {

    return [[[MSOneNoteApiSectionGroupCollectionFetcher alloc] initWithUrl:@"sectionGroups" parent:self asClass:[MSOneNoteApiSectionGroup class]] getById:identifier];

}

@end
