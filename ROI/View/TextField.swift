//
//  TextField.swift
//  ROI
//
//  Created by Fernando Romany on 3/14/18.
//  Copyright © 2018 Fernando Romany. All rights reserved.
//

import UIKit

@IBDesignable
class TextField: UITextField{
    
    override func prepareForInterfaceBuilder() {
        textFieldView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        textFieldView()
    }
    
    func textFieldView() {
        layer.cornerRadius = 5.0
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.25)
        textAlignment = .center
        clipsToBounds = true
        
        
        if let placeTxt = placeholder {
            let place = NSAttributedString(string: placeTxt, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
