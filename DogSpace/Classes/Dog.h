//
// Created by Christopher Corea on 5/27/14.
// DogSpace
// Copyright (c) 2014 BamBamProd. All rights reserved.
//
//


#import <Foundation/Foundation.h>


@interface Dog : NSObject {
}

@property (nonatomic, weak) UIImage *picture;
@property (nonatomic, weak) NSString *name;
@property (nonatomic, weak) NSString *description;
@property (nonatomic, weak) NSString *age;
@property (nonatomic, weak) NSString *breed;
@property (nonatomic, weak) NSString *fixed;
@property (nonatomic, weak) NSString *energyLevel;
@property (nonatomic, weak) NSString *favoriteActivity;

@property NSInteger rating;

@property (nonatomic, strong) NSArray *comments;

- (id)initWithName:(NSString *)name;

@end