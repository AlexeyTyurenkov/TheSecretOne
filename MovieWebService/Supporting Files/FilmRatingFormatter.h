//
//  FilmRatingFormatter.h
//  MovieWebService
//
//  Created by Oleksii Tiurenkov on 10/10/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Film.h"

@interface FilmRatingFormatter : NSObject

- (NSString*) ratingStringFor:(FilmRating)rating;

@end
