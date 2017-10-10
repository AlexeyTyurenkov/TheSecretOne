//
//  MoviesListInteractorOutput.h
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Film.h"
@protocol MoviesListInteractorDelegate <NSObject>

- (void)showdetails:(Film*)film;

- (void)showFilm:(Film*)film;


@end