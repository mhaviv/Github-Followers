//
//  GFButton.swift
//  GHFollowers
//
//  Created by Michael Haviv on 12/15/20.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero) // when there is no frame pass .zero
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    // private means it can only be called in this class
    private func configure() {
        layer.cornerRadius      = 10
        titleLabel?.textColor   = .white
        titleLabel?.font        = UIFont.preferredFont(forTextStyle: .headline) // dynamic type font (when user sets smaller or bigger text size use preferredFont)
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    
}
