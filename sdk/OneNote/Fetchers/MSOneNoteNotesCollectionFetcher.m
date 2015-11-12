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



#import "MSOneNoteFetchers.h"

@implementation MSOneNoteNotesCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    return [super initWithUrl:urlComponent parent:parent asClass:[MSOneNoteNotes class]];
}

- (void)add:(MSOneNoteNotes*)entity callback:(void (^)(MSOneNoteNotes *mSOneNoteNotes, MSOrcError *error))callback {
	
	return [super add:entity callback:^(id entityAdded, MSOrcError *e) {

        callback(entityAdded,e);
    }];
}

- (MSOneNoteNotesFetcher *)getById:(id) identifier {

    return [[MSOneNoteNotesFetcher alloc] initWithUrl:[[NSString alloc] initWithFormat:@"('%@')" , identifier] parent:self];
}

- (MSOneNoteNotesCollectionFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSOneNoteNotesCollectionFetcher *)filter:(NSString *)params{
    [super filter:params];
    
    return self;
}

- (MSOneNoteNotesCollectionFetcher *)search:(NSString *)params {
    [super search:params];
    
    return self;
}

- (MSOneNoteNotesCollectionFetcher *)top:(int)value {
    [super top:value];
    
    return self;
}

- (MSOneNoteNotesCollectionFetcher *)skip:(int)value {
    [super skip:value];
    
    return self;
}

- (MSOneNoteNotesCollectionFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (MSOneNoteNotesCollectionFetcher *)orderBy:(NSString *)params {
    [super orderBy:params];
    
    return self;
}

- (MSOneNoteNotesCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSOneNoteNotesCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

@end