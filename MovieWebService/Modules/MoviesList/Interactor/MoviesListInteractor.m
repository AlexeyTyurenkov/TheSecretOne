//
//  MoviesListInteractor.m
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import "MoviesListInteractor.h"

#import "MoviesListInteractorOutput.h"
#import "Film.h"
#import "Masonry.h"
#import "AppDelegate.h"
#import "MovieWebService-Swift.h"
#import "CurrentCalendarDateFormatter.h"
#import "FilmRatingFormatter.h"

@implementation MoviesListInteractor {
    UITableView *tableView;
    NSArray *films;
    UIView *view;
    NSString* regularCellIdentifier;
    CurrentCalendarDateFormatter* dateFormatter;
    FilmRatingFormatter* reatingFormatter;
}

- (void)setViewForSetup:(UIView *)view1 {
    view = view1;
    tableView = [UITableView new];
    [view addSubview:tableView];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.rowHeight = UITableViewAutomaticDimension;
    tableView.estimatedRowHeight = 44;
    
    regularCellIdentifier = [CellTableViewCell cellIdentifierIn:tableView];
    dateFormatter = [CurrentCalendarDateFormatter new];
    
}

#pragma mark - MoviesListInteractorInput

- (void)setData:(NSArray *)films1 {
    films = films1;
    dispatch_async(dispatch_get_main_queue(), ^{
        [tableView mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(view);
            make.right.mas_equalTo(view);
            make.top.mas_equalTo(view);
            make.bottom.mas_equalTo(view);
        }];
        
        [tableView reloadData];
    });
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return films.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"CellTableViewCell";
    CellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = (CellTableViewCell *) [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];

    }
    Film *film = [films objectAtIndex:indexPath.row];
    cell.name.text = film.name;
    cell.date.text = [dateFormatter stringFromDate:film.releaseDate];
    cell.filmRating.text = [reatingFormatter ratingStringFor:film.filmRating];
    cell.rating.text = [[NSNumber numberWithInteger:film.rating] stringValue];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    Film *film = [films objectAtIndex:indexPath.row];
    DetailsModuleBuilder *builder = [DetailsModuleBuilder new];
    [appDelegate.navigationController pushViewController:[builder buildWith:film] animated:YES];
}

@end
