//
//  TableCellTests.m
//  MovieWebService
//
//  Created by Oleksii Tiurenkov on 10/10/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CellTableViewCell.h"

@interface TableCellTests : XCTestCase
{
    UITableView* tableView;
    CellTableViewCell* cell;
}
@end

@implementation TableCellTests

- (void)setUp {
    [super setUp];
    tableView = [[UITableView alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCellIdentifier {
    //Test class method
    
    NSString* identifier = [CellTableViewCell cellIdentifierForRegisteredCellIn:tableView];
    XCTAssertTrue([identifier isEqualToString:@"CellTableViewCell"]);
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"CellTableViewCell"];
    XCTAssertTrue([cell isKindOfClass:[CellTableViewCell class]]);
}

@end
