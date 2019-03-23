//
//  SideMenuVC.swift
//  Soundbox-app-v7
//
//  Created by Maxime Schneider on 12/02/2019.
//  Copyright © 2019 Maxime Schneider. All rights reserved.
//

import UIKit

class SideMenuVC: UITableViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
        switch indexPath.row {
        case 0: NotificationCenter.default.post(name: NSNotification.Name("ShowAccueil"), object: nil)
        case 1: NotificationCenter.default.post(name: NSNotification.Name("ShowFavoris"), object: nil)
        case 2: NotificationCenter.default.post(name: NSNotification.Name("ShowSettings"), object: nil)
        default: break
            
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        

    }

    


}
