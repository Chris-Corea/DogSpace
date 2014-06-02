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
#import "DogDetailViewController.h"

@interface DoggyFinderViewController ()

@end

@implementation DoggyFinderViewController

- (void)loadView {
    [super loadView];
    self.view.backgroundColor = [UIColor clearColor];
    self.navigationItem.title = NSLocalizedString(@"DogFinderListTitle", @"");
//    self.navigationItem.title = @"Dog Finder";

    UIView *tableHeader = [[UIView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, 40)];
    tableHeader.backgroundColor = [UIColor clearColor];
    [tableHeader addSubview:[self createTableHeaderLabel]];

    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, heightWithNavBar) style:UITableViewStylePlain];
    tableView.backgroundColor = [UIColor clearColor];
    [tableView setDelegate:self];
    [tableView setDataSource:self];
    [tableView setTableHeaderView:tableHeader];
    [tableView setTableFooterView:[[UIView alloc] init]];
    [self.view addSubview:tableView];
}

- (UIView *)createTableHeaderLabel {
    UILabel *headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 5, screenWidth, 30)];
    headerLabel.text = @"Dogs In Your Area";
    headerLabel.textAlignment = NSTextAlignmentCenter;
    headerLabel.font = [UIFont boldSystemFontOfSize:18];
    headerLabel.numberOfLines = 0;
    headerLabel.backgroundColor = [UIColor clearColor];

    return headerLabel;
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

    Dog *dog = [[Dog alloc] initWithName:[@"Cash" stringByAppendingString:doggySuffix]];
    dog.description = [@"THIS IS SOME LONG TEXT THAT IS WAY TOO LONG ABOUT SOME DOG " stringByAppendingString:doggySuffix];

    DoggyFinderListTableViewCell *cell = (DoggyFinderListTableViewCell *)[tableView dequeueReusableCellWithIdentifier:reuseId];
    if (cell == nil) {
        cell = [[DoggyFinderListTableViewCell alloc] initWithReuseIdentifier:reuseId];
    }

    [cell setContentForDog:dog];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.navigationController pushViewController:[[DogDetailViewController alloc] init] animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
