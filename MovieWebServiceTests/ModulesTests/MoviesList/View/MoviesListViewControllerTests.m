//
//  MoviesListViewControllerTests.m
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MoviesListViewController.h"
#import "MoviesListViewDelegate.h"
#import "MoviesListDataSource.h"

@interface MoviesListViewControllerTests : XCTestCase

@property (nonatomic, strong) MoviesListViewController *controller;

@property (nonatomic, strong) id mockOutput;
@property (nonatomic, strong) id mockDataSource;


@end

@implementation MoviesListViewControllerTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.controller = [[MoviesListViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(MoviesListViewDelegate));
    self.mockDataSource = OCMProtocolMock(@protocol(MoviesListDataSource));
    
    self.controller.delegate = self.mockOutput;
    self.controller.dataSource = self.mockDataSource;
}

- (void)tearDown {
    self.controller = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Тестирование жизненного цикла

- (void)testThatControllerNotifiesPresenterOnDidLoad {
	// given

	// when
	[self.controller viewDidLoad];

	// then
	OCMVerify([self.mockOutput didTriggerViewReadyEvent]);
}

#pragma mark - Тестирование методов интерфейса

- (void)testUpdateOnLoading {
    //After loading controller wil ask data source for update
    [self.controller viewDidLoad];
    
    OCMVerify([self.controller update]);
}

- (void)testSetupInitiaclStateIsCalled {

    //After loading controller wil ask data source for update
    [self.controller viewDidLoad];
    
    OCMVerify([self.controller setupInitialState]);
    XCTAssertTrue([self.controller.navigationItem.title isEqualToString: @"Root View Controller"], "Title should be Root View Controller");
}

#pragma mark - Тестирование методов MoviesListViewInput

@end
