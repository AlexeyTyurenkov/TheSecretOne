//
//  MoviesListAssembly.m
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import "MoviesListBuilder.h"

#import "MoviesListViewController.h"
#import "MoviesListInteractor.h"
#import "MoviesListPresenter.h"
#import "MoviesListRouter.h"

@implementation MoviesListBuilder

@synthesize router;
@synthesize presenter;

- (UIViewController *)build {
    
    MoviesListViewController *viewController = [MoviesListViewController new];
    presenter.view = viewController;

    MoviesListInteractor *interactor = [MoviesListInteractor new];
    interactor.delegate = presenter;
    presenter.interactor = interactor;
    viewController.delegate = presenter;
    
    return viewController;

}

@end
