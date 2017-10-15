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

@interface MoviesListViewControllerTests : XCTestCase

@property (nonatomic, strong) MoviesListViewController *controller;

@property (nonatomic, strong) id mockOutput;

@end

@implementation MoviesListViewControllerTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.controller = [[MoviesListViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(MoviesListViewDelegate));

    self.controller.delegate = self.mockOutput;
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

#pragma mark - Тестирование методов MoviesListViewInput

@end
