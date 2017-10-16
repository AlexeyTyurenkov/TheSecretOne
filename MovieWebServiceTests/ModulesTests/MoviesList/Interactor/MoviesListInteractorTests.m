//
//  MoviesListInteractorTests.m
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MoviesListInteractor.h"


@interface MoviesListInteractorTests : XCTestCase

@property (nonatomic, strong) MoviesListInteractor *interactor;

@property (nonatomic, strong) id mockOutput;

@end

@implementation MoviesListInteractorTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.interactor = [[MoviesListInteractor alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(MoviesListInteractorDelegate));

    self.interactor.delegate = self.mockOutput;
}

- (void)tearDown {
    self.interactor = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Тестирование методов MoviesListInteractorDelegate

- (void)testGetData {
    id mockDelegate = self.mockOutput;
    [[mockDelegate expect] showFilms:[OCMArg any]];
    [self.interactor getData];
    [self waitForVerifiedMock:mockDelegate delay:10];
}

- (void)waitForVerifiedMock:(OCMockObject *)mock delay:(NSTimeInterval)delay
{
    NSTimeInterval i = 0;
    while (i < delay)
    {
        @try
        {
            [mock verify];
            return;
        }
        @catch (NSException *e) {}
        [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:0.5]];
        i+=0.5;
    }
    [mock verify];
}



@end
