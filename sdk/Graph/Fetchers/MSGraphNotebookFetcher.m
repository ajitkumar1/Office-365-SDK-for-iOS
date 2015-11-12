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

@implementation MSGraphNotebookFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSGraphNotebook class]]) {

		_operations = [[MSGraphNotebookOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSGraphNotebook *Notebook, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSGraphNotebookFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSGraphNotebookFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

- (MSGraphNotebookFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSGraphNotebookFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (void) readWithCallback:(void (^)(MSGraphNotebook *Notebook, MSOrcError *error))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSGraphSectionCollectionFetcher *)sections {

    return [[MSGraphSectionCollectionFetcher alloc] initWithUrl:@"sections" parent:self asClass:[MSGraphSection class]];
}

- (MSGraphSectionFetcher *)sectionsById:(NSString *)identifier {

    return [[[MSGraphSectionCollectionFetcher alloc] initWithUrl:@"sections" parent:self asClass:[MSGraphSection class]] getById:identifier];

}

- (MSGraphSectionGroupCollectionFetcher *)sectionGroups {

    return [[MSGraphSectionGroupCollectionFetcher alloc] initWithUrl:@"sectionGroups" parent:self asClass:[MSGraphSectionGroup class]];
}

- (MSGraphSectionGroupFetcher *)sectionGroupsById:(NSString *)identifier {

    return [[[MSGraphSectionGroupCollectionFetcher alloc] initWithUrl:@"sectionGroups" parent:self asClass:[MSGraphSectionGroup class]] getById:identifier];

}

@end
