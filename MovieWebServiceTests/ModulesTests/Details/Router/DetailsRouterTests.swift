//
//  DetailsRouterTests.swift
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

import XCTest

@testable
import MovieWebService

class DetailsRouterTests: XCTestCase {

    var router: DetailsRouter!
    var viewController: MockViewController!
    
    override func setUp() {
        super.setUp()
		
        viewController = MockViewController()
		
        router = DetailsRouter(navigationController: UINavigationController())
        
    }

    override func tearDown() {
        viewController = nil
        router = nil

        super.tearDown()
    }
	
    func testInitialViewController() {
        let controller = router.initialController(withPresenter: MockPresenter())
        
        XCTAssertTrue(controller is DetailsViewController, "ViewController should be a Details View Controller")
        
        XCTAssertNotNil((controller as? DetailsViewController)?.output, "Details Output Delegate should be present")
        
    }
    

    
    
    
    // MARK: - Mock
	
    class MockViewController: DetailsViewController {
        
    } 

    class MockPresenter: NSObject, PresenterProtocol,DetailsViewOutput
    {
        func viewIsReady() {
            
        }
        
        func didTapShowMore() {
            
        }
        
        var router: RouterProtocol!
        
        
    }
    
}
