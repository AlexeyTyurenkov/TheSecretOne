//
//  MoviesListAssembly.m
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import "MoviesListModuleBuilder.h"

#import "MoviesListViewController.h"
#import "MoviesListInteractor.h"
#import "MoviesListPresenter.h"
#import "MoviesListRouter.h"



@interface MoviesListModuleBuilder()

@property (nonatomic, strong) id<RouterProtocol> router;
@end

@implementation MoviesListModuleBuilder

@synthesize router;


- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

- (UIViewController *)build {
    
    router = [[MoviesListRouter alloc] initWithNavigationController:[UINavigationController new]];
    MoviesListPresenter* presenter = [MoviesListPresenter new];
    
    UIViewController* viewController = [router initialControllerWithPresenter:presenter];
    MoviesListInteractor *interactor = [MoviesListInteractor new];
    interactor.delegate = presenter;
    presenter.interactor = interactor;
    return viewController;

}

@end
