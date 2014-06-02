//
// Created by Christopher Corea on 5/30/14.
// DogSpace
// Copyright (c) 2014 BamBamProd. All rights reserved.
//
//


#import "BaseUIViewController.h"


@implementation BaseUIViewController

- (id)init {
    if ((self = [super init])) {
        screenWidth = [UIScreen mainScreen].bounds.size.width;
        screenHeight = [UIScreen mainScreen].bounds.size.height;
        heightWithNavBar = screenHeight - 64;
    }
    return self;
}

- (void)loadView {
    [super loadView];
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight)];
    myView.backgroundColor = offWhiteColor;
    self.view = myView;
}

- (void)viewWillAppear:(BOOL)animated {
    DLog(@"\n\n=============%@=============\n\n", self);
    [super viewWillAppear:animated];
}

@end