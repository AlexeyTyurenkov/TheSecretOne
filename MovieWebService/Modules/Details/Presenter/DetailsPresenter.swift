//
//  DetailsPresenter.swift
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

@objc class DetailsPresenter: NSObject,  DetailsModuleInput, DetailsViewOutput, DetailsInteractorOutput, PresenterProtocol {

    weak var view: DetailsViewInput!
    var interactor: DetailsInteractorInput!
    var router: RouterProtocol!
    var film: Film!
    // MARK: - DetailsViewOutput
    
    func viewIsReady() {
        interactor.getFilm()
    }
    
    // MARK: - DetailsInteractorOutput
    func show(film: Film) {
        self.film = film
        view.showDirectorsName(name: film.director.name)
    }
    
    func didTapShowMore() {
        view.show(actorName: film.cast.first!.name)
        view.show(screenName: film.cast.first!.screenName)
    }
}
