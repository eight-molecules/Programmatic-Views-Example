//
//  ProfileContentView.swift
//  Programmatic View Example
//
//  Created by Grant Elliott on 9/11/18.
//  Copyright © 2018 Grant Elliott. All rights reserved.
//

import UIKit

class ProfileContentView: UIView {
    var shouldSetupConstraints: Bool = true
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .gray
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 5.0
        
        self.autoSetDimension(.width, toSize: 124.0)
        self.autoSetDimension(.height, toSize: 124.0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func updateConstraints() {
        if (shouldSetupConstraints) {
            let edgesInset: CGFloat = 10.0
            
            self.autoPinEdge(toSuperviewEdge: .left, withInset: edgesInset)
        }
        
        super.updateConstraints()
    }
}
