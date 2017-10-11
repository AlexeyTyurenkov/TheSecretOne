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
    UIWindow* window;
    UINavigationController* navigationViewControler;
}
@end


@implementation MoviesListRouter

//@synthesize presenter;


- (instancetype)initWithWindow:(UIWindow *)presentationWindow andNavigationController:(UINavigationController *)navigationController
{
    self = [super init];
    if (self) {
         window = presentationWindow;
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
//    id<RouterProtocol> nextRouter = [[DetailsRouter alloc] initWithWindow:window andNavigationController:navigationViewControler];
//    [self injectFilm:film toDetailRouter:nextRouter];
//    UIViewController* controller = [nextRouter initialController];
//    [navigationViewControler pushViewController:controller animated:YES];
}

#pragma mark - inject dependencies

- (void)injectFilm:(Film*) film toDetailRouter: (id<RouterProtocol>) router
{
    if ([router conformsToProtocol:@protocol(DetailsRouterInput)])
    {
        id<DetailsRouterInput> detailRouter = (id<DetailsRouterInput>)router;
        [detailRouter setWithFilm:film];
    }
}

@end
