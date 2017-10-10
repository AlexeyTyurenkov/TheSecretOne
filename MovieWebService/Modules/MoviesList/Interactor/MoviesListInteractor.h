//
//  MoviesListInteractor.h
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import "MoviesListInteractorInput.h"
#import "CellTableViewCell.h"

@protocol MoviesListInteractorDelegate;

@interface MoviesListInteractor : NSObject <MoviesListViewProtocol, UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) id<MoviesListInteractorDelegate> delegate;

@end
