//
//  Director.m
//  MovieWebServiceTests
//
//  Created by Aleksey Tyurenkov on 10/10/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ModelIntegrationBaseClass.h"

@interface DirectorTests : ModelIntegrationBaseClass

@end

@implementation DirectorTests


- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDirectorParsing {
    
    [self loadFilmWithTestBlock:^(Film *film) {
        Director* director = film.director;
        XCTAssertNotNil(director,"Director cannot be nil");
        XCTAssertNotNil(director.film,"Director's film cannot be nil");
        XCTAssertNotNil(director.film.cast,"Director's film cast cannot be nil");
    }];

}

@end
