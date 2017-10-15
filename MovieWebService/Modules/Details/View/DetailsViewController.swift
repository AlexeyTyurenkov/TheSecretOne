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


    var tapToShowMore: TappableLabel!
    var directorView: LabelWithCaption!
    var actorView: LabelWithCaption!
    var actorScreenNameView: LabelWithCaption!

    
    var presenter: PresenterProtocol!
    // MARK: - Life cycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setupUI()
        output.viewIsReady()
    }

    
    
    // MARK: - configure UI
    private func setupUI()
    {
        view = UIView()
        view.backgroundColor = .white
        
        let presonViewHeight = 80
        let afterDirectorPAdding:CGFloat = 30.0
        let regularPadding:CGFloat = 20.0

        let directorYPoint = 100
        let leadingGuide = 20
        let width = 200
        
        directorView = LabelWithCaption(frame:CGRect(x: leadingGuide, y: directorYPoint, width: width, height: presonViewHeight))
        view.addSubview(directorView)

        tapToShowMore = TappableLabel()
        view.addSubview(tapToShowMore)
        tapToShowMore.frame = CGRect(x: leadingGuide, y: Int(directorView.frame.maxY + afterDirectorPAdding) , width: width, height: presonViewHeight)
        tapToShowMore.text = "Tap here to show more"
        tapToShowMore.delegate = self
        
        actorView = LabelWithCaption(frame:CGRect(x: leadingGuide, y: Int(directorView.frame.maxY + afterDirectorPAdding), width: width, height: presonViewHeight))
        configureActorView()
        view.addSubview(actorView)

        actorScreenNameView = LabelWithCaption(frame:CGRect(x: leadingGuide, y: Int(actorView.frame.maxY + regularPadding), width: width, height: presonViewHeight))
        configureActorScreen()
        view.addSubview(actorScreenNameView)
        

        actorScreenNameView.isHidden = true
        actorView.isHidden = true
        
    }
    
    private func configureNavigationBar()
    {
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
    }
    
    private func configureDirectorView(name: String)
    {
        directorView.set(caption: "Director Name", text: name)
    }
    
    private func configureActorView(name: String = "")
    {
        actorView.set(caption: "Actor Name", text: name)
    }
    
    private func configureActorScreen(name: String = "")
    {
        actorScreenNameView.set(caption: "Actor Screen Name", text: name)
    }
    
    


    
    //MARK: - DetailsViewInput
    
    func showDirectorsName(name: String) {
        configureDirectorView(name: name)
    }
    
    func show(actorName:String)
    {
        configureActorView(name: actorName)
        actorView.isHidden = false
    }
    
    func show(screenName: String)
    {
        configureActorScreen(name: screenName)
        actorScreenNameView.isHidden = false

    }
    
    // MARK: - TappableLabelDelegate

    func didReceiveTouch() {
        
        output.didTapShowMore()
        tapToShowMore.isHidden = true
    }

}
