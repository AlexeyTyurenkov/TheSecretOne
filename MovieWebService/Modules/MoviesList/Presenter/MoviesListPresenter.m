//
//  MoviesListPresenter.m
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import "MoviesListPresenter.h"

#import "MoviesListRouterInput.h"
#import "RouterProtocol.h"

@class MoviesListInteractor;
@protocol RouterProtocol;


@implementation MoviesListPresenter {
    NSArray *films;
}



#pragma mark - Методы MoviesListModuleInput

- (void)configureModule {
 }

#pragma mark - Методы MoviesListViewDelegate

- (void)didTriggerViewReadyEvent {
	[self.userInterface setupInitialState];
    [self.interactor getData];
}

- (void)didTappedRow:(NSInteger)index
{
    Film* film = films[index];
    [self.moviesListRouter showDetail:film];
}

#pragma mark - MoviesListInteractorDelegate
- (void)showFilms:(NSArray<Film*> *)loadedFilms
{
    films = loadedFilms;
    [self.userInterface update];
}

#pragma mark - MoviesListDataSource
-(NSUInteger)count
{
    return [films count];
}

- (Film *)itemAt:(NSInteger)index
{
    return films[index];
}

- (void)setRouter:(id<RouterProtocol>)router
{
    if ([router conformsToProtocol:@protocol(MoviesListRouterInput)])
    {
        self.moviesListRouter = (id<MoviesListRouterInput>)router;
    }
}

@end
