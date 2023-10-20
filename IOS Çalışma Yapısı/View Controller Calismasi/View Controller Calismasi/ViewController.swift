//
//  ViewController.swift
//  View Controller Calismasi
//
//  Created by Sena Nur Erdem on 29.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var etiket: UILabel!
        
    
    @IBOutlet var etiketler: [UILabel]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        etiket.text = "MERHABA"
        
        etiketler[0].text = "HEY 1"
        etiketler[1].text = "HEY 2"
        
    }

    @IBAction func tiklan(_ sender: Any) {
        
        etiket.text = "BUTON TIKLANDI"
    }
    
}

