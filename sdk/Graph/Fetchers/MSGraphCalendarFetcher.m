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

@implementation MSGraphCalendarFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSGraphCalendar class]]) {

		_operations = [[MSGraphCalendarOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSGraphCalendar *Calendar, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSGraphCalendarFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSGraphCalendarFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

- (MSGraphCalendarFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSGraphCalendarFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (void) readWithCallback:(void (^)(MSGraphCalendar *Calendar, MSOrcError *error))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSGraphEventCollectionFetcher *)events {

    return [[MSGraphEventCollectionFetcher alloc] initWithUrl:@"Events" parent:self asClass:[MSGraphEvent class]];
}

- (MSGraphEventFetcher *)eventsById:(NSString *)identifier {

    return [[[MSGraphEventCollectionFetcher alloc] initWithUrl:@"Events" parent:self asClass:[MSGraphEvent class]] getById:identifier];

}

- (MSGraphEventCollectionFetcher *)calendarView {

    return [[MSGraphEventCollectionFetcher alloc] initWithUrl:@"CalendarView" parent:self asClass:[MSGraphEvent class]];
}

- (MSGraphEventFetcher *)calendarViewById:(NSString *)identifier {

    return [[[MSGraphEventCollectionFetcher alloc] initWithUrl:@"CalendarView" parent:self asClass:[MSGraphEvent class]] getById:identifier];

}

@end
