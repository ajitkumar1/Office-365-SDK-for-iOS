//
//  FolderOperations.m
//  office365_exchange_sdk
//
//  Created by Gustavo on 10/3/14.
//  Copyright (c) 2014 Microsoft. All rights reserved.
//

#import "FolderOperations.h"

@implementation FolderOperations

-(id)initWith:(NSString *)urlComponent :(ODataExecutable *)parent{
    [[super init]initWith:urlComponent :parent];
    return self;
}
@end
