//
//  MoviesListPresenter.m
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import "MoviesListPresenter.h"

#import "MoviesListRouterInput.h"

@class MoviesListInteractor;



@implementation MoviesListPresenter {
    NSArray *films;
}



#pragma mark - Методы MoviesListModuleInput

- (void)configureModule {
 }

#pragma mark - Методы MoviesListViewOutput

- (void)didTriggerViewReadyEvent {
	[self.userInterface setupInitialState];
    [self.interactor getData];
}



- (void)showFilm:(Film *)film
{
    films = [NSArray arrayWithObject:film];
    [self.userInterface update];
}

- (void)showdetails:(Film *)film
{
    
}

-(NSUInteger)count
{
    return [films count];
}

- (Film *)itemAt:(NSInteger)index
{
    return films[index];
}


#pragma mark - Методы MoviesListInteractorOutput

@end
