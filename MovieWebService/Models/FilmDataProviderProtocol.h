//
//  FilmDataProviderProtocol.h
//  MovieWebService
//
//  Created by Oleksii Tiurenkov on 10/10/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import "Film.h"

@protocol FilmDataProviderProtocol <NSObject>



- (void)getFilmWithCallback:(void (^_Nonnull)(Film * _Nullable film))callback;


@end

