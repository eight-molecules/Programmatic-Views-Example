//
//  ViewController.swift
//  Programmatic View Example
//
//  Created by Grant Elliott on 9/11/18.
//  Copyright © 2018 Grant Elliott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var profileView: ProfileView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.profileView = ProfileView(frame: UIScreen.main.bounds)
        self.view.addSubview(self.profileView)
        
        self.profileView.autoPinEdgesToSuperviewEdges(with: UIEdgeInsets.zero)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

