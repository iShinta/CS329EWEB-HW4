//
//  RatingControl.swift
//  mh47723_assignment4
//
//  Created by Anonymous85 on 9/18/16.
//  Copyright © 2016 Minh-Tri Ho. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    //MARK: Properties
    var rating: Int = 0
    var ratingButtons = [UIButton]()
    
    //MARK: Initializer
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.red
        
        button.addTarget(self, action: Selector(("ratingButtonTapped:")), for: .touchDown)
        
        addSubview(button)
    }
    
    //override func intrinsicContentSize() -> CGSize{
     //   return CGSize(width: 240, height: 44)
    //}
    
    //MARK: Button Action
    func ratingButtonTapped(button: UIButton){
        print("Button pressed")
    }
}
