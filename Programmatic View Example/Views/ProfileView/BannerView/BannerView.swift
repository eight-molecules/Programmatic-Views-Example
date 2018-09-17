//
//  BannerView.swift
//  Programmatic View Example

import UIKit

class BannerView: UIImageView {
    var shouldSetupConstraints: Bool = true
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .gray
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
