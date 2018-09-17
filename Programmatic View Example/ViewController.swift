//
//  ViewController.swift
//  Programmatic View Example

import UIKit

class ViewController: UIViewController {
    var profileView: ProfileView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.profileView = ProfileView(frame: UIScreen.main.bounds)
        self.view.addSubview(self.profileView)
        
        self.profileView.translatesAutoresizingMaskIntoConstraints = false
        self.profileView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        self.profileView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        self.profileView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor).isActive = true
        self.profileView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

