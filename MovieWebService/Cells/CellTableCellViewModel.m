//
//  CellTableCellViewModel.m
//  MovieWebService
//
//  Created by Oleksii Tiurenkov on 10/10/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import "CellTableCellViewModel.h"
#import "CurrentCalendarDateFormatter.h"
#import "FilmRatingFormatter.h"


@interface CellTableCellViewModel ()
{
    CurrentCalendarDateFormatter* dateFormatter;
    FilmRatingFormatter* ratingFormatter;
}
@end


@implementation CellTableCellViewModel

- (void)configure:(CellTableViewCell *)cell withModel:(Film *)film
{
    cell.name.text = film.name;
    cell.date.text = [dateFormatter stringFromDate:film.releaseDate];
    cell.filmRating.text = [ratingFormatter ratingStringFor:film.filmRating];
    cell.rating.text = [[NSNumber numberWithInteger:film.rating] stringValue];
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        dateFormatter = [CurrentCalendarDateFormatter new];
        ratingFormatter = [FilmRatingFormatter new];
    }
    return self;
}

@end
