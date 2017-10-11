//
//  MoviesListAssembly.h
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RouterProtocol.h"
#import "MoviesListPresenter.h"

@interface MoviesListModuleBuilder: NSObject

@property (weak, nonatomic) UIWindow* window;
@property (weak, nonatomic) UINavigationController* navigat;


- (UIViewController *)build;
- (instancetype)initWithWindow:(UIWindow*)window andNavigationController:(UINavigationController *)navigationController;


@end
