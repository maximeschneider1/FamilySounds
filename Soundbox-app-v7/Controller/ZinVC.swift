//
//  ZinVC.swift
//  Soundbox-app-v7
//
//  Created by Maxime Schneider on 12/03/2019.
//  Copyright © 2019 Maxime Schneider. All rights reserved.
//

import UIKit
import AVFoundation

class ZinVC: UIViewController {
    
    var player1 = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        do {
            let audioPath1 = Bundle.main.path(forResource: "Zin Rire", ofType: "mp3")

            try player1 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath1!) as URL)
        } catch {
            print("error within ZinVC AudioPath")
        }
        
        
        
        
        
    }
    
    @IBAction func zin_Tapped(_ sender: UIButton) {
        player1.play()
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
