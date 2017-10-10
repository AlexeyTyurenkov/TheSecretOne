//
//  MoviesListViewController.h
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Film.h"
#import "MoviesListDataSource.h"
#import "MoviesListViewProtocol.h"

@protocol MoviesListViewProtocol;
@protocol MoviesListViewDelegate;

@interface MoviesListViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, MoviesListViewProtocol>

@property (nonatomic, weak) id<MoviesListViewDelegate> delegate;
@property (nonatomic, weak) id<MoviesListDataSource> dataSource;

@end
