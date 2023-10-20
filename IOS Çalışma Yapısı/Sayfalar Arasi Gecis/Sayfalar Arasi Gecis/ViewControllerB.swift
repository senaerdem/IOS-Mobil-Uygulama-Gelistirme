//
//  ViewControllerB.swift
//  Sayfalar Arasi Gecis
//
//  Created by Sena Nur Erdem on 1.02.2023.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    
    var mesaj:String? // optional bir veri tanımladık
    var kisi = Kisiler()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Kişi id : \(kisi.kisiId!) Kişi Ad : \(kisi.kisiAd!)")
        
        etiket.text = mesaj!
    }
   
}
