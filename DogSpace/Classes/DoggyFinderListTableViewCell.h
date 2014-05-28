//
// Created by Christopher Corea on 5/27/14.
// DogSpace
// Copyright (c) 2014 BamBamProd. All rights reserved.
//
//


#import <Foundation/Foundation.h>

@class Dog;


@interface DoggyFinderListTableViewCell : UITableViewCell {
    UIImageView *petPicture;
    UILabel *nameLabel;
    UILabel *descriptionLabel;
    UIImageView *accessoryImage;
}

- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier;
- (void)setContentForDog:(Dog *)dog;

@end