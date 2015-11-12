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

@implementation MSGraphPrivilegedRoleFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSGraphPrivilegedRole class]]) {

		_operations = [[MSGraphPrivilegedRoleOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSGraphPrivilegedRole *PrivilegedRole, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSGraphPrivilegedRoleFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSGraphPrivilegedRoleFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

- (MSGraphPrivilegedRoleFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSGraphPrivilegedRoleFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (void) readWithCallback:(void (^)(MSGraphPrivilegedRole *PrivilegedRole, MSOrcError *error))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSGraphPrivilegedRoleSummaryFetcher *)summary {

	 return [[MSGraphPrivilegedRoleSummaryFetcher alloc] initWithUrl:@"Summary" parent:self asClass:[MSGraphPrivilegedRoleSummary class]];
}

- (MSGraphPrivilegedRoleSettingsFetcher *)settings {

	 return [[MSGraphPrivilegedRoleSettingsFetcher alloc] initWithUrl:@"Settings" parent:self asClass:[MSGraphPrivilegedRoleSettings class]];
}

- (MSGraphPrivilegedRoleAssignmentCollectionFetcher *)assignments {

    return [[MSGraphPrivilegedRoleAssignmentCollectionFetcher alloc] initWithUrl:@"Assignments" parent:self asClass:[MSGraphPrivilegedRoleAssignment class]];
}

- (MSGraphPrivilegedRoleAssignmentFetcher *)assignmentsById:(NSString *)identifier {

    return [[[MSGraphPrivilegedRoleAssignmentCollectionFetcher alloc] initWithUrl:@"Assignments" parent:self asClass:[MSGraphPrivilegedRoleAssignment class]] getById:identifier];

}

@end