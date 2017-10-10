//
//  FilmRatingFormatter.m
//  MovieWebService
//
//  Created by Oleksii Tiurenkov on 10/10/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import "FilmRatingFormatter.h"

@implementation FilmRatingFormatter


- (NSString*) ratingStringFor:(FilmRating)rating
{
    NSString *filmRatingText = @"";
    switch (rating) {
        case G:
            filmRatingText = @"G";
            break;
        case PG:
            filmRatingText = @"PG";
            break;
        case PG13:
            filmRatingText = @"PG13";
            break;
        case R:
            filmRatingText = @"R";
            break;
        case NC17:
            filmRatingText = @"NC17";
            break;
        default:
            break;
    }
    return filmRatingText;
}


@end
