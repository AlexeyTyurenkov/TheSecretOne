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

@interface MoviesListBuilder: NSObject

@property (nonatomic, weak) id<RouterProtocol> router;
@property (nonatomic, weak) MoviesListPresenter* presenter;


- (UIViewController *)build;

@end
