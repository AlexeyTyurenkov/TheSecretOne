//
//  DetailsInteractor.swift
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

class DetailsInteractor:DetailsInteractorInput {



    weak var output: DetailsInteractorOutput!
    var film: Film! 
    // MARK: - DetailsInteractorInput
    
    func getFilm() -> Void {
        output.show(film: film)
    }
    
}
