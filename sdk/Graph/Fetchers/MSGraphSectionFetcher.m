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

@implementation MSGraphSectionFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSGraphSection class]]) {

		_operations = [[MSGraphSectionOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSGraphSection *Section, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSGraphSectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSGraphSectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

- (MSGraphSectionFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSGraphSectionFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (void) readWithCallback:(void (^)(MSGraphSection *Section, MSOrcError *error))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSGraphNotebookFetcher *)parentNotebook {

	 return [[MSGraphNotebookFetcher alloc] initWithUrl:@"parentNotebook" parent:self asClass:[MSGraphNotebook class]];
}

- (MSGraphSectionGroupFetcher *)parentSectionGroup {

	 return [[MSGraphSectionGroupFetcher alloc] initWithUrl:@"parentSectionGroup" parent:self asClass:[MSGraphSectionGroup class]];
}

- (MSGraphPageCollectionFetcher *)pages {

    return [[MSGraphPageCollectionFetcher alloc] initWithUrl:@"pages" parent:self asClass:[MSGraphPage class]];
}

- (MSGraphPageFetcher *)pagesById:(NSString *)identifier {

    return [[[MSGraphPageCollectionFetcher alloc] initWithUrl:@"pages" parent:self asClass:[MSGraphPage class]] getById:identifier];

}

@end
