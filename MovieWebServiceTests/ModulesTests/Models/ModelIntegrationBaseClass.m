//
//  ModelIntegrationBaseClass.m
//  MovieWebService
//
//  Created by Oleksii Tiurenkov on 10/10/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import "ModelIntegrationBaseClass.h"





@interface ModelIntegrationBaseClass ()
{
    id<FilmDataProviderProtocol> filmDataProvider;
}
@end

@implementation ModelIntegrationBaseClass

- (void)setUp {
    [super setUp];
    filmDataProvider = [DummyDataProvider new];

    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void) loadFilmWithTestBlock: (void(^)(Film*))block
{
    XCTestExpectation *expectation = [[XCTestExpectation alloc] initWithDescription:@"DataProviderTesting"];
    
    [filmDataProvider getFilmWithCallback:^(Film * _Nullable film) {
        block(film);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:10];
}


@end
