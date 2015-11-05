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

@implementation MSGraphEventFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSGraphEvent class]]) {

		_operations = [[MSGraphEventOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSGraphEvent *Event, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSGraphEventFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSGraphEventFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

- (MSGraphEventFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSGraphEventFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (void) readWithCallback:(void (^)(MSGraphEvent *Event, MSOrcError *error))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSGraphCalendarFetcher *)calendar {

	 return [[MSGraphCalendarFetcher alloc] initWithUrl:@"Calendar" parent:self asClass:[MSGraphCalendar class]];
}

- (MSGraphEventCollectionFetcher *)instances {

    return [[MSGraphEventCollectionFetcher alloc] initWithUrl:@"Instances" parent:self asClass:[MSGraphEvent class]];
}

- (MSGraphEventFetcher *)instancesById:(NSString *)identifier {

    return [[[MSGraphEventCollectionFetcher alloc] initWithUrl:@"Instances" parent:self asClass:[MSGraphEvent class]] getById:identifier];

}

- (MSGraphExtensionCollectionFetcher *)extensions {

    return [[MSGraphExtensionCollectionFetcher alloc] initWithUrl:@"Extensions" parent:self asClass:[MSGraphExtension class]];
}

- (MSGraphExtensionFetcher *)extensionsById:(NSString *)identifier {

    return [[[MSGraphExtensionCollectionFetcher alloc] initWithUrl:@"Extensions" parent:self asClass:[MSGraphExtension class]] getById:identifier];

}

- (MSGraphAttachmentCollectionFetcher *)attachments {

    return [[MSGraphAttachmentCollectionFetcher alloc] initWithUrl:@"Attachments" parent:self asClass:[MSGraphAttachment class]];
}

- (MSGraphAttachmentFetcher *)attachmentsById:(NSString *)identifier {

    return [[[MSGraphAttachmentCollectionFetcher alloc] initWithUrl:@"Attachments" parent:self asClass:[MSGraphAttachment class]] getById:identifier];

}

@end
