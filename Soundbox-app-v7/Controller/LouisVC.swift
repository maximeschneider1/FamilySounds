//
//  LouisVC.swift
//  Soundbox-app-v7
//
//  Created by Maxime Schneider on 12/02/2019.
//  Copyright © 2019 Maxime Schneider. All rights reserved.
//

import UIKit
import AVFoundation

class LouisVC: UIViewController {

    var player1 = AVAudioPlayer()
    var player2 = AVAudioPlayer()
    var player3 = AVAudioPlayer()
    var player4 = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    
    do {
        let audioPath1 = Bundle.main.path(forResource: "Louis Cmb", ofType: "mp3")
        let audioPath2 = Bundle.main.path(forResource: "Louis Lit", ofType: "mp3")
        let audioPath3 = Bundle.main.path(forResource: "Louis Dégustation", ofType: "mp3")
        let audioPath4 = Bundle.main.path(forResource: "Louis Bordel", ofType: "mp3")
    
        try player1 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath1!) as URL)
        try player2 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath2!) as URL)
        try player3 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath3!) as URL)
        try player4 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath4!) as URL)
    }
    catch {
            print("error within MarianneVC AudioPath")
    }
    

}

@IBAction func cmbTapped(_ sender: UIButton) {
    player1.play()
}

@IBAction func lit_Tapped(_ sender: UIButton) {
    player2.play()
}

@IBAction func degustation_Tapped(_ sender: UIButton) {
    player3.play()
}

@IBAction func bordel_Tapped(_ sender: UIButton) {
    player4.play()
}

}
