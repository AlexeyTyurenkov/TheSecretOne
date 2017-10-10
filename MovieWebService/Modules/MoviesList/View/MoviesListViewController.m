//
//  MoviesListViewController.m
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import "MoviesListViewController.h"

#import "MoviesListViewDelegate.h"
#import "AppDelegate.h"
#import "Film.h"
#import "FilmDataProviderProtocol.h"
#import "DummyDataProvider.h"

@interface MoviesListViewController ()
{
    id<FilmDataProviderProtocol> dataProvider;
}
@end



@implementation MoviesListViewController

#pragma mark - Life cycle

- (void)viewDidLoad {
	[super viewDidLoad];

    dataProvider = [DummyDataProvider new];
    [self.delegate didTriggerViewReadyEvent];
    [self.delegate setViewForSetup:self.view];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    __weak MoviesListViewController* weakSelf = self;
    [dataProvider getFilmWithCallback:^(Film * _Nullable film) {
        [weakSelf.delegate setData:film];
    }];


}

#pragma mark - MoviesListViewInput

- (void)setupInitialState {
    self.navigationItem.title = @"RootViewController";
    self.view.backgroundColor = [UIColor whiteColor];
}

@end
