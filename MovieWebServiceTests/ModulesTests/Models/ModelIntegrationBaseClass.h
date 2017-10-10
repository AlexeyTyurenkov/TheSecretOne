//
//  ModelIntegrationBaseClass.h
//  MovieWebService
//
//  Created by Oleksii Tiurenkov on 10/10/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "FilmDataProviderProtocol.h"
#import "DummyDataProvider.h"

@interface ModelIntegrationBaseClass : XCTestCase

- (void) loadFilmWithTestBlock: (void(^)(Film*))block;

@end
