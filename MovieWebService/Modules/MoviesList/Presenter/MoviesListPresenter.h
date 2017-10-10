//
//  MoviesListPresenter.h
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import "MoviesListViewDelegate.h"
#import "MoviesListInteractorDelegate.h"
#import "MoviesListModuleInput.h"

@protocol MoviesListViewInput;
@protocol MoviesListViewProtocol;
@protocol MoviesListRouterInput;

@interface MoviesListPresenter : NSObject <MoviesListModuleInput, MoviesListViewDelegate, MoviesListInteractorDelegate>

@property (nonatomic, strong) id<MoviesListViewInput> view;
@property (nonatomic, strong) id<MoviesListViewProtocol> interactor;
@property (nonatomic, strong) id<MoviesListRouterInput> router;

@end
