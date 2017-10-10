//
//  FilmRatingFormatter.m
//  MovieWebService
//
//  Created by Oleksii Tiurenkov on 10/10/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "FilmRatingFormatter.h"

@interface FilmRatingFormatterTests : XCTestCase
{
    FilmRatingFormatter* formatter;
}
@end

@implementation FilmRatingFormatterTests

- (void)setUp {
    [super setUp];
    formatter = [FilmRatingFormatter new];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRatings {
    XCTAssertTrue([[formatter ratingStringFor:G] isEqualToString:@"G"], @"G Rating formatted wrong");
    XCTAssertTrue([[formatter ratingStringFor:PG] isEqualToString:@"PG"], @"PG Rating formatted wrong");
    XCTAssertTrue([[formatter ratingStringFor:PG13] isEqualToString:@"PG13"], @"PG13 Rating formatted wrong");
    XCTAssertTrue([[formatter ratingStringFor:R] isEqualToString:@"R"], @"R Rating formatted wrong");
    XCTAssertTrue([[formatter ratingStringFor:NC17] isEqualToString:@"NC17"], @"R Rating formatted wrong");
}

- (void)testNegativeCases {
    
}


@end
