//
//  DetailsModuleBuilder.swift
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

import UIKit

@objc protocol FilmsDetailBuilder {
    func set(film: Film) -> Void
}

class DetailsModuleBuilder: NSObject, ModuleBuilderProtocol {

    var router: DetailsRouterInput!
    var interactor: DetailsInteractorInput!
    fileprivate var film: Film?
    
    
    func build(with film: Film) -> UIViewController {

        
        let presenter = DetailsPresenter()
        let router = DetailsRouter(navigationController: UINavigationController())
        let interactor = DetailsInteractor()
        let viewController = router?.initialController(withPresenter: presenter)
        
        interactor.film = film
        presenter.router = router

        



        
        interactor.output = presenter

        presenter.interactor = interactor
//        viewController.output = presenter
//        viewController.director = film.director 

        return viewController!
    }

    func build() -> UIViewController! {
        return build(with: film!)
    }
    
}

extension DetailsModuleBuilder: FilmsDetailBuilder
{
    func set(film: Film) {
        self.film = film
    }
}
