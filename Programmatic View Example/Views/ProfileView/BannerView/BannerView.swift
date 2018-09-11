//
//  BannerView.swift
//  Programmatic View Example
//
//  Created by Grant Elliott on 9/11/18.
//  Copyright © 2018 Grant Elliott. All rights reserved.
//

import UIKit

class BannerView: UIImageView {
    var shouldSetupConstraints: Bool = true
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .gray
        self.autoSetDimension(.height, toSize: UIScreen.main.bounds.width / 3)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func updateConstraints() {
        if (shouldSetupConstraints) {
            self.autoPinEdgesToSuperviewEdges(with: UIEdgeInsets.zero, excludingEdge: .bottom)
        }
        
        super.updateConstraints()
    }

}
