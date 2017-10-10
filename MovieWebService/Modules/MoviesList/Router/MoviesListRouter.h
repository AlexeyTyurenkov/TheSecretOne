//
//  MoviesListRouter.h
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import "MoviesListRouterInput.h"
#import "RouterProtocol.h"

@class UIViewController;

@interface MoviesListRouter : NSObject <MoviesListRouterInput, RouterProtocol>

@property (nonatomic, weak) UIViewController *viewController;

@end
