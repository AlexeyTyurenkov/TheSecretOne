//
//  DetailsRouter.swift
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

@objc class DetailsRouter: NSObject, DetailsRouterInput, RouterProtocol {

	weak var viewController: DetailsViewController!
    private var film: Film?
    
    private var window: UIWindow
    private var navigationController: UINavigationController
	// MARK: - DetailsRouterInput
    func initialController() -> UIViewController! {
        return UIViewController()
    }
	
    required init!(window: UIWindow!, andNavigationController navigationController: UINavigationController!) {
        self.window = window
        self.navigationController = navigationController
    }
    
    func set(film: Film) {
        
    }
    
}
