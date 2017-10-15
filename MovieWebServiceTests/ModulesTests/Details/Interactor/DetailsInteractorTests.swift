//
//  DetailsInteractorTests.swift
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

import XCTest

@testable
import MovieWebService

class DetailsInteractorTests: XCTestCase {

    var interactor: DetailsInteractor!
    var output: MockOutput!
	
    override func setUp() {
        super.setUp()
		
        output = MockOutput()
       
        interactor = DetailsInteractor()
        interactor.film = Film()
        interactor.output = output
        
    }

    override func tearDown() {
        output = nil
        interactor = nil
	
        super.tearDown()
    }

    
    func testShowFilm() {
        //TODO: check film
        interactor.getFilm()
        XCTAssertNotNil(output.film)
    }
    
    // MARK: - Mock

    class MockOutput: DetailsInteractorOutput {
        var film: Film?
        func show(film: Film) {
            self.film = film
        }
    }

}
