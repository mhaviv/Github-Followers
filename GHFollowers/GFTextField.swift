//
//  GFTextField.swift
//  GHFollowers
//
//  Created by Michael Haviv on 12/15/20.
//

import UIKit

class GFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius          = 10
        layer.borderWidth           = 2
        layer.borderColor           = UIColor.systemGray4.cgColor // when dealing with layers you have to do .cgcolor for core graphics
        
        textColor                   = .label // standard label color (Black on light mode and white on dark mode)
        tintColor                   = .label // blinking cursor color
        textAlignment               = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
    adjustsFontSizeToFitWidth       = true // font shrinks to fit width so nothing gets cut off
        minimumFontSize             = 12
        
        backgroundColor             = .tertiarySystemBackground
        autocorrectionType          = .no // no autocorrect
        
        placeholder                 = "Enter a username"
    }
}
