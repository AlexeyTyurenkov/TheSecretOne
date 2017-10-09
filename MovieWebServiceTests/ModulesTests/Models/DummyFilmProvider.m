//
//  DummyFilmProvider.m
//  MovieWebServiceTests
//
//  Created by Aleksey Tyurenkov on 10/10/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "FilmDataProviderProtocol.h"
#import "DummyDataProvider.h"

@interface DummyFilmProvider : XCTestCase



@end

@implementation DummyFilmProvider

id<FilmDataProviderProtocol> filmDataProvider;

- (void)setUp {
    [super setUp];
    filmDataProvider = [[DummyDataProvider alloc] init];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testGetData
{
    XCTestExpectation *expectation = [[XCTestExpectation alloc] initWithDescription:@"DataProviderTesting"];
    
    [filmDataProvider getFilmWithCallback:^(Film * _Nullable film) {
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:10];
}

- (void)testStructure {
    XCTestExpectation *expectation = [[XCTestExpectation alloc] initWithDescription:@"DataProviderTesting"];
    
    [filmDataProvider getFilmWithCallback:^(Film * _Nullable film) {
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:10];
}

@end
