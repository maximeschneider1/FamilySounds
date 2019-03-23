//
//  MainVC.swift
//  Soundbox-app-v7
//
//  Created by Maxime Schneider on 12/02/2019.
//  Copyright © 2019 Maxime Schneider. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showProfile),
                                               name: NSNotification.Name("ShowCredits"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showSettings),
                                               name: NSNotification.Name("ShowFavoris"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showSignIn),
                                               name: NSNotification.Name("ShowSettings"),
                                               object: nil)

        

}
    
    @objc func showProfile() {
        performSegue(withIdentifier: "ShowCredits", sender: nil)
    }
    
    @objc func showSettings() {
        performSegue(withIdentifier: "ShowFavoris", sender: nil)
    }
    
    @objc func showSignIn() {
        performSegue(withIdentifier: "ShowSettings", sender: nil)
    }
    
    
    @IBAction func oneMoreTapped() {
        print("TOGGLE SIDE MENU")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        }

}
