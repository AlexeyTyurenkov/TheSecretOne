//
//  MoviesListRealInteractor.h
//  MovieWebService
//
//  Created by Oleksii Tiurenkov on 10/10/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MoviesListInteractorProtocol.h"


@interface MoviesListInteractor : NSObject <MoviesListInteractorProtocol>

@property (nonatomic, weak) id<MoviesListInteractorDelegate> delegate;
- (void)getData;

@end
