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
    private var builder = DetailsModuleBuilder()
    private var window: UIWindow
    private var navigationController: UINavigationController
	// MARK: - DetailsRouterInput

	
    required init!(window: UIWindow!, andNavigationController navigationController: UINavigationController!) {
        self.window = window
        self.navigationController = navigationController
    }
    
    
    func initialController(withPresenter presenter: PresenterProtocol) -> UIViewController
    {
        return UIViewController()

    }
    
    //MARK: - DetailsRouterProtocol
    func set(film: Film) {
        
    }
    
}
