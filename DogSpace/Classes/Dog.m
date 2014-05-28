//
// Created by Christopher Corea on 5/27/14.
// DogSpace
// Copyright (c) 2014 BamBamProd. All rights reserved.
//
//


#import "Dog.h"


@implementation Dog

- (id)initWithName:(NSString *)name {
    if (self = [super init]) {
        self.name = name;
        self.picture = nil;
        self.description = @"";
        self.age = @"";
        self.breed = @"";
        self.fixed = @"";
        self.energyLevel = @"";
        self.favoriteActivity = @"";

        self.rating = -1;

        self.comments = nil;
    }
    return self;
}

@end