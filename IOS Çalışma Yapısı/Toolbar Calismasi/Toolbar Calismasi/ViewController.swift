//
//  ViewController.swift
//  Toolbar Calismasi
//
//  Created by Sena Nur Erdem on 5.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func geriButton(_ sender: Any) {
        etiket.text = "geri"
    }
    
    @IBAction func oynatButton(_ sender: Any) {
        etiket.text = "oynat"
    }
    
    @IBAction func homeButton(_ sender: Any) {
        etiket.text = "home"
    }
}

