//
//  DetailsViewController.swift
//  MovieWebService
//
//  Created by testDev on 11/04/2017.
//  Copyright © 2017 Agoda Services Co. Ltd. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController, DetailsViewInput, TappableLabelDelegate {



    var output: DetailsViewOutput!
    public var director: Director!

    var directorName: UILabel!
    var directorNameValue: UILabel!
    var tapToShowMore: TappableLabel!
    var actorName: UILabel!
    var actorScreenName: UILabel!

    var presenter: PresenterProtocol!
    // MARK: Life cycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setupUI()
        output.viewIsReady()
    }

    
    private func setupUI()
    {
        view = UIView()
        view.backgroundColor = .white
        
        directorName = UILabel()
        view.addSubview(directorName)
        directorName.frame = CGRect(x: 20, y: 100, width: 200, height: 30)
        directorName.text = "Director Name"
        
        directorNameValue = UILabel()
        view.addSubview(directorNameValue)
        directorNameValue.frame = CGRect(x: 20, y: 150, width: 200, height: 30)
        
        tapToShowMore = TappableLabel()
        view.addSubview(tapToShowMore)
        tapToShowMore.frame = CGRect(x: 20, y: 200, width: 200, height: 30)
        tapToShowMore.text = "Tap here to show more"
        tapToShowMore.delegate = self
        
        actorName = UILabel()
        view.addSubview(actorName)
        actorName.frame = CGRect(x: 20, y: 240, width: 200, height: 30)
        
        actorScreenName = UILabel()
        view.addSubview(actorScreenName)
        actorScreenName.frame = CGRect(x: 20, y: 270, width: 200, height: 30)
        actorName.isHidden = true
        actorScreenName.isHidden = true
    }
    
    
    func set(film: Film)
    {
        let actor: Actor = director.film.cast.first!
        actorName.text = actor.name;
        actorScreenName.text = actor.screenName;
    }

    func showDirectorsName(name: String) {
        directorNameValue.text =  name
    }
    
    func show(actorName:String)
    {
        self.actorName.text = actorName;
        self.actorName.isHidden = false
    }
    
    func show(screenName: String)
    {
        actorScreenName.text = screenName
        actorScreenName.isHidden = false
    }
    
    // MARK: DetailsViewInput

    func didReceiveTouch() {
        
        output.didTapShowMore()
        
    }

}
