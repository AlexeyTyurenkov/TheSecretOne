
//
//  MoviesListViewController.m
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import "MoviesListViewController.h"
#import "MoviesListViewDelegate.h"
#import "Film.h"
#import "CellTableCellViewModel.h"
#import "Masonry.h"


@interface MoviesListViewController ()
{
    UITableView* _tableView;
    CellTableCellViewModel* viewModel;
    NSString* regularCellIdentifier;
}
@end


@implementation MoviesListViewController

#pragma mark - Life cycle

- (void)viewDidLoad {
	[super viewDidLoad];
    [self setViewForSetup];
    [self.delegate didTriggerViewReadyEvent];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}


- (void)setViewForSetup {
    _tableView = [UITableView new];
    [self.view addSubview:_tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.rowHeight = UITableViewAutomaticDimension;
    _tableView.estimatedRowHeight = 44;
    viewModel = [CellTableCellViewModel new];
    regularCellIdentifier = [CellTableViewCell cellIdentifierForRegisteredCellIn:_tableView];
    [_tableView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view);
        make.right.mas_equalTo(self.view);
        make.top.mas_equalTo(self.view);
        make.bottom.mas_equalTo(self.view);
    }];
}

#pragma mark - MoviesListViewInput

- (void)setupInitialState {
    self.navigationItem.title = @"Root View Controller";
    self.view.backgroundColor = [UIColor whiteColor];
}


#pragma mark - TableViewDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:regularCellIdentifier];
    if (cell == nil) {
        cell = (CellTableViewCell *) [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:regularCellIdentifier];
        
    }
    [viewModel configure:cell withModel:[self.dataSource itemAt:indexPath.row]];
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataSource count];
}

#pragma mark - TableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self.delegate didTappedRow:indexPath.row];
}




- (void)update
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [_tableView reloadData];
    });
}

@end
