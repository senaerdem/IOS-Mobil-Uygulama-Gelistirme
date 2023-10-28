//
//  SonucEkraniVC.swift
//  Bayrak Uygulamasi
//
//  Created by Sena Nur Erdem on 2.04.2023.
//


import UIKit

class SonucEkraniVC: UIViewController {

    @IBOutlet weak var labelBasari: UILabel!
    
    @IBOutlet weak var labelSonuc: UILabel!
    
    var dogruSayisi:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        if let d = dogruSayisi {
            labelSonuc.text = "\(d) DOĞRU \(5-d) YANLIŞ"
            labelBasari.text = "\(d*100/5) BAŞARI"
        }
    }
    
    @IBAction func tekrarDene(_ sender: Any) {
        
        navigationController?.popToRootViewController(animated: true)
        
        
    }
}
