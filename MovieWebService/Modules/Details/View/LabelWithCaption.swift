//
//  LabelWithCaption.swift
//  MovieWebService
//
//  Created by Oleksii Tyurenkov on 10/15/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

import UIKit

class LabelWithCaption: UIView {

    
    private var captionLabel: UILabel
    private var valueLabel: UILabel
    private var stack: UIStackView
    
    
    override init(frame: CGRect) {
        stack = UIStackView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
        
        captionLabel = UILabel()
        valueLabel = UILabel()
        captionLabel.font = UIFont.preferredFont(forTextStyle: .body)
        valueLabel.font = UIFont.preferredFont(forTextStyle: .subheadline)
        stack.addArrangedSubview(captionLabel)
        stack.addArrangedSubview(valueLabel)
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.alignment = .leading
        super.init(frame: frame)
        self.addSubview(stack)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        stack = UIStackView()
        captionLabel = UILabel()
        captionLabel.font = UIFont.preferredFont(forTextStyle: .body)
        valueLabel = UILabel()
        super.init(coder: aDecoder)
    }
    
    
    func set(caption:String, text:String)
    {
        captionLabel.text = caption
        valueLabel.text = text
    }
    
    /*
     
     
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
