//
//  ViewController.swift
//  Tab Bar Calismasi
//
//  Created by Sena Nur Erdem on 5.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var profileSayac = 0
    var workSayac = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func profileArttir(_ sender: Any) {
        
        if let tabItems = tabBarController?.tabBar.items{
            let profileTabBarItem = tabItems[0]
            
            profileSayac = profileSayac + 1
            
            profileTabBarItem.badgeColor = UIColor.purple
            profileTabBarItem.badgeValue = String(profileSayac)
            
        }
    }
    @IBAction func workArttir(_ sender: Any) {
        
        if let tabItems = tabBarController?.tabBar.items{
            let workTabBarItem = tabItems[1]
            
            workSayac = workSayac + 1
            
            workTabBarItem.badgeColor = UIColor.green
            workTabBarItem.badgeValue = String(workSayac)
            
        }
    }
        
}

