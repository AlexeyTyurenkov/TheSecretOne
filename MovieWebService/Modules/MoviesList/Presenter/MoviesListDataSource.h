//
//  MoviesListDataSource.h
//  MovieWebService
//
//  Created by Oleksii Tiurenkov on 10/10/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

@protocol MoviesListDataSource <NSObject>

- (NSUInteger)count;
- (Film*) itemAt:(NSInteger)index;

@end
