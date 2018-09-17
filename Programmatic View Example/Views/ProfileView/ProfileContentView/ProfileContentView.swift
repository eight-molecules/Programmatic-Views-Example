//
//  ProfileContentView.swift
//  Programmatic View Example

import UIKit

class ProfileContentView: UIView {
    var shouldSetupConstraints: Bool = true
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .gray
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 5.0
        
        self.widthAnchor.constraint(equalToConstant: 124.0).isActive = true
        self.heightAnchor.constraint(equalToConstant: 124.0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
