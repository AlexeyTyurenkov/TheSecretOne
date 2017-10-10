//
//  MoviesListRouter.m
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import "MoviesListRouter.h"
#import <UIKit/UIKit.h>
#import "MoviesListBuilder.h"
#import "MoviesListPresenter.h"

@interface MoviesListRouter ()
{
    UIWindow* window;
    UINavigationController* navigationViewControler;
    MoviesListBuilder* builder;
    MoviesListPresenter* presenter;
}
@end


@implementation MoviesListRouter

- (instancetype)init
{
    self = [super init];
    if (self) {
        builder = [MoviesListBuilder new];

        presenter = [MoviesListPresenter new];
        [presenter setRouter:self];
    }
    return self;
}

- (void)startPresentationOnWindow: (UIWindow*)presentationWindow
{
    window = presentationWindow;

    [builder setRouter:self];
    [builder setPresenter:presenter];
    
    UIViewController *viewController = [builder build];
    navigationViewControler = [[UINavigationController alloc] initWithRootViewController:viewController];
    window.rootViewController = navigationViewControler;
}

#pragma mark - MoviesListRouterInput

@end
