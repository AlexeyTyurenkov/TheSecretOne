//
//  Director.m
//  MovieWebServiceTests
//
//  Created by Aleksey Tyurenkov on 10/10/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Film.h"
#import "DummyDataProvider.h"
#import "FilmDataProviderProtocol.h"

@interface DirectorTests : XCTestCase

@end

@implementation DirectorTests

id<FilmDataProviderProtocol> dataProvider;

- (void)setUp {
    [super setUp];
    dataProvider = [DummyDataProvider new];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDirectorParsing {
    XCTestExpectation *expectation = [[XCTestExpectation alloc] initWithDescription:@"DataProviderTesting"];
    
    [dataProvider getFilmWithCallback:^(Film * _Nullable film) {
        Director* director = film.director;
        XCTAssertNotNil(director,"Director cannot be nil");
        XCTAssertNotNil(director.film,"Director's film cannot be nil");
        XCTAssertNotNil(director.film.cast,"Director's film cast cannot be nil");
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:10];
}

@end
