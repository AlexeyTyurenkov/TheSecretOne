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
#import "MoviesListDataSource.h"
#import "MoviesListViewProtocol.h"
#import "MoviesListRouterInput.h"
#import "MoviesListInteractorProtocol.h"

@interface MoviesListPresenter : NSObject <MoviesListDataSource, MoviesListInteractorDelegate, MoviesListViewDelegate>

@property (nonatomic, strong) id<MoviesListViewProtocol> userInterface;
@property (nonatomic, strong) id<MoviesListRouterInput> router;
@property (nonatomic, strong) id<MoviesListInteractorProtocol> interactor;

@end
