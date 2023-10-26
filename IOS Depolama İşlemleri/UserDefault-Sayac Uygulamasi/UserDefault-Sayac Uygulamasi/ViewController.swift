//
//  ViewController.swift
//  UserDefault-Sayac Uygulamasi
//
//  Created by Sena Nur Erdem on 1.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSayac: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let d = UserDefaults.standard //Kullanım için kurulum
        
        var sayac = d.integer(forKey: "sayac") //Uygulama açılır açılmaz veri alınır.
        
        sayac = sayac + 1 //sayacı 1 arttırır
        
        d.set(sayac,forKey: "sayac") //Veri tekrar kayıt edilir
        
        labelSayac.text = "Sayaç : \(sayac)"
    }


}

