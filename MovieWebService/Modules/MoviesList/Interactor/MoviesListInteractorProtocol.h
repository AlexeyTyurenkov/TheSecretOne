//
//  MoviesListInteractorProtocol.h
//  MovieWebService
//
//  Created by Oleksii Tiurenkov on 10/10/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import "MoviesListInteractorDelegate.h"

@protocol MoviesListInteractorProtocol <NSObject>

@property (nonatomic, weak) id<MoviesListInteractorDelegate> delegate;
- (void)getData;


@end
