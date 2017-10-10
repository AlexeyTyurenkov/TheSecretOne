//
//  MoviesListInteractor.m
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import "MoviesListInteractor.h"

#import "MoviesListInteractorDelegate.h"
#import "Film.h"
#import "Masonry.h"
#import "AppDelegate.h"
#import "MovieWebService-Swift.h"
#import "CellTableCellViewModel.h"

@implementation MoviesListInteractor {
    UITableView *_tableView;
    NSArray *films;
    UIView *view;
    NSString* regularCellIdentifier;
    CellTableCellViewModel* viewModel;
}

- (void)setViewForSetup:(UIView *)view1 {
    view = view1;
    _tableView = [UITableView new];
    [view addSubview:_tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.rowHeight = UITableViewAutomaticDimension;
    _tableView.estimatedRowHeight = 44;
    viewModel = [CellTableCellViewModel new];
    regularCellIdentifier = [CellTableViewCell cellIdentifierIn:_tableView];
    [_tableView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(view);
        make.right.mas_equalTo(view);
        make.top.mas_equalTo(view);
        make.bottom.mas_equalTo(view);
    }];
}

#pragma mark - MoviesListInteractorInput

- (void)setData:(NSArray *)films1 {
    films = films1;
    dispatch_async(dispatch_get_main_queue(), ^{
        [_tableView reloadData];
    });
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return films.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:regularCellIdentifier];
    if (cell == nil) {
        cell = (CellTableViewCell *) [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:regularCellIdentifier];

    }
    Film *film = [films objectAtIndex:indexPath.row];
    [viewModel configure:cell withModel:film];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    Film *film = [films objectAtIndex:indexPath.row];
    DetailsModuleBuilder *builder = [DetailsModuleBuilder new];
    [self.delegate showdetails:film];
}

@end
