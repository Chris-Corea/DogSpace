//
// Created by Christopher Corea on 5/27/14.
// DogSpace
// Copyright (c) 2014 BamBamProd. All rights reserved.
//
//


#import "DoggyFinderListTableViewCell.h"
#import "Dog.h"
#import "UIView+ViewAdditions.h"


@implementation DoggyFinderListTableViewCell

- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier]) {
        petPicture = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
        petPicture.image = [UIImage imageNamed:@"doggy-placeholder"];
        petPicture.contentMode = UIViewContentModeScaleAspectFit;
        petPicture.center = CGPointMake(35, 40);
        [self.contentView addSubview:petPicture];

        CGFloat labelXPos = petPicture.left + petPicture.width + 10;

        nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(labelXPos, 5, 180, 20)];
        nameLabel.font = [UIFont boldSystemFontOfSize:15];
        nameLabel.textColor = RGB(22, 140, 140);
        nameLabel.numberOfLines = 1;
        [self.contentView addSubview:nameLabel];

        descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(labelXPos, 28, 190, 30)];
        descriptionLabel.font = [UIFont systemFontOfSize:12];
        descriptionLabel.textColor = detailTextColor;
        descriptionLabel.numberOfLines = 2;
        descriptionLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        [self.contentView addSubview:descriptionLabel];

        accessoryImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"accessory-arrow"]];
        self.accessoryView = accessoryImage;
    }
    return self;
}

- (void)setContentForDog:(Dog *)dog {
    nameLabel.text = dog.name;
    descriptionLabel.text = dog.description;

    self.backgroundColor = cellBackgroundColor;
}

@end