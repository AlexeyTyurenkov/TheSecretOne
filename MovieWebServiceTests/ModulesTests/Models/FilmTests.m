//
//  FilmTests.m
//  MovieWebService
//
//  Created by Oleksii Tiurenkov on 10/10/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ModelIntegrationBaseClass.h"


@interface FilmTests : ModelIntegrationBaseClass


@end

@implementation FilmTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFilmParsing {
    [self loadFilmWithTestBlock:^(Film *film) {
        XCTAssertNotNil(film,"Film cannot be nil");
        XCTAssertNotNil(film.director,"Director of the film cannot be nil");
        XCTAssertNotNil(film.cast,"Film's cast cannot be nil");
        XCTAssertNotEqual(film.cast.count, 0,"Film's cast not empty");
        XCTAssertNotNil(film.name, "Film Name should be filled");
    }];
}


@end
