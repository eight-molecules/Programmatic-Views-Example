//
//  ProfileView.swift
//  Programmatic View Example
//
//  Created by Grant Elliott on 9/11/18.
//  Copyright © 2018 Grant Elliott. All rights reserved.
//

import UIKit
import PureLayout

class ProfileView: UIView {
    var shouldSetupConstraints = true
    
    var bannerView: BannerView!
    var contentView: ProfileContentView!
    var segmentedControl: UISegmentedControl!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.bannerView = BannerView(frame: frame)
        self.addSubview(self.bannerView)
        
        self.contentView = ProfileContentView(frame: frame)
        self.addSubview(self.contentView)
        
        self.segmentedControl = UISegmentedControl(items: ["Tweets", "Media", "Likes"])
        self.addSubview(self.segmentedControl)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func updateConstraints() {
        if (shouldSetupConstraints) {
            let edgesInset: CGFloat = 10.0
            let centerOffset: CGFloat = 62.0
            
            self.contentView.autoPinEdge(.bottom, to: .bottom, of: self.bannerView, withOffset: centerOffset)
            
            self.segmentedControl.autoPinEdge(toSuperviewEdge: .bottom, withInset: edgesInset)
            self.segmentedControl.autoPinEdge(toSuperviewEdge: .left, withInset: edgesInset)
            self.segmentedControl.autoPinEdge(toSuperviewEdge: .right, withInset: edgesInset)
            
            shouldSetupConstraints = false
        }
        
        super.updateConstraints()
    }
}
