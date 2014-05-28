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
        nameLabel.textColor = titleColor;
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

    self.backgroundColor = cellBackgroundColor1;
}

//- (void)updateConstraints {
//    [super updateConstraints];
//
//    for (UIView *view in self.contentView.subviews) {
//        NSArray *constraints = [self constraintsReferencingView:view];
//        for (NSLayoutConstraint *constraint in constraints) {
//            [self.contentView removeConstraint:constraint];
//        }
//    }
//
//    NSDictionary *uberViews = @{@"name": nameLabel, @"description": descriptionLabel};
//    [uberView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-2-[name]-2-|" options:NSLayoutFormatAlignAllCenterY metrics:nil views:uberViews]];
//    [uberView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-2-[description]-2-|" options:NSLayoutFormatAlignAllCenterY metrics:nil views:uberViews]];
//    [uberView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-2-[name]-5-[description(==name)]-2-|" options:0 metrics:nil views:uberViews]];
//
//    [uberView setContentCompressionResistancePriority:750 forAxis:UILayoutConstraintAxisHorizontal];
//    [uberView setContentCompressionResistancePriority:750 forAxis:UILayoutConstraintAxisVertical];
//
//    NSDictionary *views = @{@"petPicture": petPicture, @"accessoryImage":accessoryImage, @"uberView":uberView};
//    [self.contentView addConstraints:[NSLayoutConstraint
//            constraintsWithVisualFormat:@"H:|-10-[petPicture(<=accessoryImage)]-[uberView]-2-[accessoryImage]-10-|"
//                                options:NSLayoutFormatAlignAllCenterY
//                                metrics:nil
//                                  views:views]];
//    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-50-[petPicture]" options:0 metrics:nil views:views]];
//
//}
//
//- (NSArray *)constraintsReferencingView:(UIView *)theView {
//    NSMutableArray *array = @[].mutableCopy;
//    NSArray *views = [@[self] arrayByAddingObjectsFromArray:self.subviews];
//
//    for (UIView *view in views)
//        for (NSLayoutConstraint *constraint in view.constraints) {
//            if (![constraint.class isEqual:[NSLayoutConstraint class]])
//                continue;
//
//            if ([self constraint:constraint refersToView:theView])
//                [array addObject:constraint];
//        }
//
//    return array;
//}
//
//- (BOOL)constraint:(NSLayoutConstraint *)constraint refersToView:(UIView *)theView {
//    if (!theView)
//        return NO;
//    if (!constraint.firstItem) // shouldn't happen. Illegal
//        return NO;
//    if (constraint.firstItem == theView)
//        return YES;
//    if (!constraint.secondItem)
//        return NO;
//    return (constraint.secondItem == theView);
//}
//
//+ (BOOL)requiresConstraintBasedLayout {
//    return YES;
//}

@end