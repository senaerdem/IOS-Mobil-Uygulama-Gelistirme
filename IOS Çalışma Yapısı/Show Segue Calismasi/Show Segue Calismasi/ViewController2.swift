//
//  ViewController2.swift
//  Show Segue Calismasi
//
//  Created by Sena Nur Erdem on 12.09.2022.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true //geri tusunu gizler

        // Do any additional setup after loading the view.
    }
    
    @IBAction func geri(_ sender: Any) {
        /*
        //bir önceki sayfaya döndürür
        navigationController?.popViewController(animated: true)
        
        //ilk sayfaya döndürür
        //navigationController?.popToRootViewController(animated: true)
         */
    }
    
    
    @IBAction func goto3(_ sender: Any) {
        /*
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa3") as! ViewController3
        
        navigationController?.pushViewController(gidilecekViewController, animated: true)
         */
    }
}
