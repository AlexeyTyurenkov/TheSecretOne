//
//  DetailsModuleBuilder.swift
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

import UIKit

class DetailsModuleBuilder {

    var router: DetailsRouterInput!
    var interactor: DetailsInteractorInput!
    
    
    func build(with data: Any) -> UIViewController {

        guard let film = data as? Film else { return UIViewController(); }
        let viewController = DetailsViewController()
//
//        let router = DetailsRouter()
//        router.viewController = viewController

        let presenter = DetailsPresenter()
        presenter.view = viewController
       // presenter.router = router

        let interactor = DetailsInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        viewController.director = film.director 

        return viewController
    }

}
