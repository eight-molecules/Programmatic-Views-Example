//
//  ProfileView.swift
//  Programmatic View Example

import UIKit

class ProfileView: UIView {
    var shouldSetupConstraints = true
    
    var bannerView: BannerView!
    var contentView: ProfileContentView!
    var segmentedControl: UISegmentedControl!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.bannerView = BannerView(frame: frame)
        self.addSubview(self.bannerView)
        
        self.bannerView.translatesAutoresizingMaskIntoConstraints = false
        self.bannerView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.bannerView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.33).isActive = true
        self.bannerView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        self.bannerView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
        self.contentView = ProfileContentView(frame: frame)
        self.addSubview(self.contentView)
        
        self.contentView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10.0).isActive = true
        self.contentView.bottomAnchor.constraint(equalTo: self.bannerView.bottomAnchor, constant: 62.0).isActive = true
        
        self.segmentedControl = UISegmentedControl(items: ["Tweets", "Media", "Likes"])
        self.addSubview(self.segmentedControl)
        
        self.segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        self.segmentedControl.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10.0).isActive = true
        self.segmentedControl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10.0).isActive = true
        self.segmentedControl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10.0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
