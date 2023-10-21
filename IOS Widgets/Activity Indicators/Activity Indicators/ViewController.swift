//
//  ViewController.swift
//  Activity Indicators
//
//  Created by Sena Nur Erdem on 19.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        indicator.isHidden = true // Görünmez hale getirir
    }

    @IBAction func basla(_ sender: Any) {
        indicator.startAnimating() // Dönme animasyonunu başlatır
        indicator.isHidden = false // Görünür hale getirir
    }
    @IBAction func dur(_ sender: Any) {
        indicator.stopAnimating() // Dönme animasyonunu durdurur
        indicator.isHidden = true // Görünmez hale getirir
    }
    
}

