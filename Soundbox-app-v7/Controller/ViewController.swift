//
//  ViewController.swift
//  Soundbox-app-v7
//
//  Created by Maxime Schneider on 11/02/2019.
//  Copyright © 2019 Maxime Schneider. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sideMenuContstraint: NSLayoutConstraint!
    var sideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(toggleSideMenu), name: NSNotification.Name("ToggleSideMenu"),
                                               object: nil)
    }

    
    @objc func toggleSideMenu () {
        if sideMenuOpen {
            sideMenuOpen = false
            sideMenuContstraint.constant = -240
        }   else {
            sideMenuOpen = true
            sideMenuContstraint.constant = 0

            
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
        
    }


}

