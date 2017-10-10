//
//  MoviesListRealInteractor.m
//  MovieWebService
//
//  Created by Oleksii Tiurenkov on 10/10/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import "MoviesListInteractor.h"
#import "FilmDataProviderProtocol.h"
#import "DummyDataProvider.h"

@interface MoviesListInteractor ()
{
    id<FilmDataProviderProtocol> dataProvider;
}
@end


@implementation MoviesListInteractor


- (instancetype)init
{
    self = [super init];
    if (self) {
        dataProvider = [DummyDataProvider new];
    }
    return self;
}

- (void)getData
{
    __weak MoviesListInteractor* weakSelf = self;
    [dataProvider getFilmWithCallback:^(Film * _Nullable film) {
        [weakSelf.delegate showFilm:film];
    }];
}

@end
