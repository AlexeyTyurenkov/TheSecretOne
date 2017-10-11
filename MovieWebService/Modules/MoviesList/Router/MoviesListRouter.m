//
//  MoviesListRouter.m
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import "MoviesListRouter.h"
#import <UIKit/UIKit.h>
#import "MoviesListPresenter.h"
#import "MovieWebService-Swift.h"
#import "MoviesListViewController.h"


@interface MoviesListRouter ()
{
    UINavigationController* navigationViewControler;
}
@end


@implementation MoviesListRouter

//@synthesize presenter;


- (instancetype)initWithNavigationController:(UINavigationController *)navigationController
{
    self = [super init];
    if (self) {
        navigationViewControler = navigationController;
    }
    return self;
}


- (UIViewController *)initialControllerWithPresenter:(MoviesListPresenter*)presenter
{
    presenter = presenter;
    presenter.router = self;
  
    MoviesListViewController *viewController = [MoviesListViewController new];
    viewController.delegate = presenter;
    viewController.dataSource = presenter;
    presenter.userInterface = viewController;

    [navigationViewControler setViewControllers:@[viewController]];
    return navigationViewControler;
}


#pragma mark - MoviesListRouterInput

-(void)showDetail:(Film *)film
{
    id<ModuleBuilderProtocol> builder = [DetailsModuleBuilder new];
    [self injectFilm:film toDetailModuleBuilder:builder];
    UIViewController* controller = [builder build];
    [navigationViewControler pushViewController:controller animated:YES];
}

#pragma mark - inject dependencies

- (void)injectFilm:(Film*) film toDetailModuleBuilder: (id<ModuleBuilderProtocol>) router
{
    if ([router conformsToProtocol:@protocol(FilmsDetailBuilder)])
    {
        id<FilmsDetailBuilder> detailRouter = (id<FilmsDetailBuilder>)router;
        [detailRouter setWithFilm:film];
    }
}

@end
