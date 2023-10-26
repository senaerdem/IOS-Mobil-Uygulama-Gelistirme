//
//  KisiGuncelleViewController.swift
//  Kisiler Uygulama - CoreData
//
//  Created by Sena Nur Erdem on 24.10.2023.
//

import UIKit

class KisiGuncelleViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext

    @IBOutlet weak var kisiTelTextfield: UITextField!
    @IBOutlet weak var kisiAdTexfield: UITextField!
    
    var kisi:Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi {
            kisiAdTexfield.text = k.kisi_ad
            kisiTelTextfield.text = k.kisi_tel
        }
    }
    
    @IBAction func guncelle(_ sender: Any) {
        
        if let k = kisi, let ad = kisiAdTexfield.text, let tel = kisiTelTextfield.text {
            k.kisi_ad = ad
            k.kisi_tel = tel
            
            appDelegate.saveContext()
        }
    }
    
}
