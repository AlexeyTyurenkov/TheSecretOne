//
//  CellTableViewModelTests.m
//  MovieWebServiceTests
//
//  Created by Aleksey Tyurenkov on 10/16/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CellTableViewCell.h"
#import "CellTableCellViewModel.h"
#import "Film.h"
#import "OCMock.h"

@interface CellTableViewModelTests : XCTestCase
{
    CellTableViewCell* cell;
    CellTableCellViewModel* model;
    UITableView* tableView;
}
@end

@implementation CellTableViewModelTests

- (void)setUp {
    [super setUp];
    tableView = [[UITableView alloc] init];
    NSString* identifier = [CellTableViewCell cellIdentifierForRegisteredCellIn:tableView];
    cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    model = [[CellTableCellViewModel alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.

}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCellConfiguration {
    
    Film* film = [[Film alloc] init];
    [film setName:@"Mock NAme"];
    [film setReleaseDate:[NSDate new]];
    [film setRating:3];
    [film setFilmRating:NC17];
    
    [model configure:cell withModel:film];
    
    XCTAssertNotNil(cell.name, @"Name label should be filled");
    XCTAssertNotNil(cell.rating, @"Ratind label should be present");
    XCTAssertNotNil(cell.filmRating, @"Film rating outlet label should be present");
    XCTAssertNotNil(cell.date, @"Name label should be filled");
    XCTAssertTrue([cell.name.text isEqualToString:@"Mock NAme"]);
    XCTAssertTrue([cell.filmRating.text isEqualToString:@"NC17"]);
    
    
}

@end
