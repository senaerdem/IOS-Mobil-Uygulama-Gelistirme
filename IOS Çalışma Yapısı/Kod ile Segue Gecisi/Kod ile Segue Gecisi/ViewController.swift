//
//  ViewController.swift
//  Kod ile Segue Gecisi
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
        
        let nesne = Kisiler(kisiId: 1336, kisiAd: "Sena")
        
        performSegue(withIdentifier: "gofrom1to2", sender: nesne)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let gelenVeri = sender as? Kisiler
        
        print("Gelen Veri :\(gelenVeri!.kisiId!) \(gelenVeri!.kisiAd!)")
        
        print("Geçiş 1 den 2 ye")
    }
}

