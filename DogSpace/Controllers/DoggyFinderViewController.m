//
//  DoggyFinderViewController.m
//  DogSpace
//
//  Created by Christopher Corea on 5/27/14.
//  Copyright (c) 2014 BamBamProd. All rights reserved.
//

#import "DoggyFinderViewController.h"
#import "DoggyFinderListTableViewCell.h"
#import "Dog.h"
#import "UIView+ViewAdditions.h"

@interface DoggyFinderViewController ()

@end

@implementation DoggyFinderViewController

- (void)loadView {
    [super loadView];
//    self.view.backgroundColor = listBackgroundColor;
    self.view.backgroundColor = titleColor;

    UIView *tableHeader = [[UIView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, 40)];
    tableHeader.backgroundColor = [UIColor clearColor];
    UILabel *headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 5, tableHeader.width, 30)];
    headerLabel.text = @"I am a table's header view!";
    headerLabel.textAlignment = NSTextAlignmentCenter;
    headerLabel.font = [UIFont boldSystemFontOfSize:18];
    headerLabel.numberOfLines = 0;
    headerLabel.backgroundColor = [UIColor clearColor];
    [tableHeader addSubview:headerLabel];

    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, screenWidth, screenHeight) style:UITableViewStyleGrouped];
    tableView.backgroundColor = [UIColor clearColor];
    [tableView setDelegate:self];
    [tableView setDataSource:self];
    [tableView setTableHeaderView:tableHeader];
    [tableView setTableFooterView:[[UIView alloc] init]];
    [self.view addSubview:tableView];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 10;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *reuseId = @"MyIdentifier";
    NSString *doggySuffix = [NSString stringWithFormat:@"%i", indexPath.section];

    DoggyFinderListTableViewCell *cell = (DoggyFinderListTableViewCell *)[tableView dequeueReusableCellWithIdentifier:reuseId];
    if (cell == nil) {
        cell = [[DoggyFinderListTableViewCell alloc] initWithReuseIdentifier:reuseId];
    }

    Dog *dog = [[Dog alloc] initWithName:[@"Cash" stringByAppendingString:doggySuffix]];
    dog.description = [@"THIS IS SOME LONG TEXT THAT IS WAY TOO LONG ABOUT SOME DOG " stringByAppendingString:doggySuffix];

    [cell setContentForDog:dog];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
