//
//  DetailsPresenterTests.swift
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//


import XCTest

@testable
import MovieWebService

class DetailsPresenterTests: XCTestCase {

    var presenter: DetailsPresenter!
    var router: MockRouter!
    var interactor: MockInteractor!
    var view: MockView!
	
    override func setUp() {
        super.setUp()
		
        router = MockRouter(navigationController: UINavigationController())
        interactor = MockInteractor()
        view = MockView()

        presenter = DetailsPresenter()
        presenter.router = router
        presenter.interactor = interactor
        presenter.view = view
    }

    override func tearDown() {
        router = nil
        interactor = nil
        view = nil
        presenter = nil

        super.tearDown()
    }

    
    func testPresenter() {
        
    }
    
    
    // MARK: - Mock

    class MockInteractor: DetailsInteractorInput {
        func getFilm()-> Void
        {
        
        }
    }

    class MockRouter: NSObject, DetailsRouterInput,RouterProtocol {
        func set(film: Film) {
            
        }
        
        required init!(navigationController: UINavigationController!) {
            
        }
        
        func initialController(withPresenter presenter: PresenterProtocol!) -> UIViewController! {
            return UIViewController()
        }
        
     
        

    }

    class MockView: DetailsViewInput {
        func showDirectorsName(name: String) {
            
        }
        
        func show(actorName: String) {
            
        }
        
        func show(screenName: String) {
            
        }
        
		
    }

}
