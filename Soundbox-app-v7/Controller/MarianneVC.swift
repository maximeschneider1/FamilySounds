//
//  MarianneVC.swift
//  Soundbox-app-v7
//
//  Created by Maxime Schneider on 12/02/2019.
//  Copyright © 2019 Maxime Schneider. All rights reserved.
//

import UIKit
import AVFoundation

class MarianneVC: UIViewController {
    
    var player1 = AVAudioPlayer()
    var player2 = AVAudioPlayer()
    var player3 = AVAudioPlayer()
    var player4 = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        do {
            let audioPath1 = Bundle.main.path(forResource: "Mamir Bière 1", ofType: "mp3")
            let audioPath2 = Bundle.main.path(forResource: "Mamir Manger", ofType: "mp3")
            let audioPath3 = Bundle.main.path(forResource: "Mamir Tuer", ofType: "mp3")
            let audioPath4 = Bundle.main.path(forResource: "Mamir Comment", ofType: "mp3")
            
            try player1 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath1!) as URL)
            try player2 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath2!) as URL)
            try player3 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath3!) as URL)
            try player4 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath4!)
                as URL)
        } catch {
            print("error within MarianneVC AudioPath")
        }
    
    
    
    
    
    }
    
    @IBAction func biereTapped(_ sender: UIButton) {
        player1.play()
    }
    
    @IBAction func mange_Tapped(_ sender: UIButton) {
        player2.play()
    }
    
    @IBAction func tuer_Tapped(_ sender: UIButton) {
        player3.play()
    }
    
    @IBAction func comment_Tapped(_ sender: UIButton) {
        player4.play()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
