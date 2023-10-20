//
//  ViewController.swift
//  Show Segue Calismasi
//
//  Created by Sena Nur Erdem on 12.09.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func goto2(_ sender: Any) {
        
        /*
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa2") as! ViewController2
        
        navigationController?.pushViewController(gidilecekViewController, animated: true)
         */
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { //sayfalar arası geçiş dinleme : segue id vermek gerek
        if segue.identifier == "gofrom1to2" {
            print("Geçiş : 1 den 2 ye geçiş yapıldı")
        }
    }
}

