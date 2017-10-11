//
//  DetailsRouter.swift
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

@objc class DetailsRouter: NSObject, DetailsRouterInput, RouterProtocol {

    private var navigationController: UINavigationController
	// MARK: - DetailsRouterInput

	
    required init!(navigationController: UINavigationController!) {
        self.navigationController = navigationController
    }
    
    
    func initialController(withPresenter presenter: PresenterProtocol) -> UIViewController
    {
        let detailsViewController = DetailsViewController()
        detailsViewController.presenter = presenter
        detailsViewController.output = presenter as! DetailsViewOutput
        if let presenter = presenter as? DetailsPresenter
        {
            presenter.view = detailsViewController
        }
        return detailsViewController

    }
    
    //MARK: - DetailsRouterProtocol
    func set(film: Film) {
        
    }
    
}
