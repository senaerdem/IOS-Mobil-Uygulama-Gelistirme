//
//  KisiEkleViewController.swift
//  Kisiler Uygulama - CoreData
//
//  Created by Sena Nur Erdem on 24.10.2023.
//

import UIKit

class KisiEkleViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext

    @IBOutlet weak var kisiTelTextfield: UITextField!
    @IBOutlet weak var kisiAdTexfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ekle(_ sender: Any) {
        
        if let ad = kisiAdTexfield.text,let tel = kisiTelTextfield.text {
            
            let kisi = Kisiler(context: context)
            
            kisi.kisi_ad = kisiAdTexfield.text
            kisi.kisi_tel = kisiTelTextfield.text
            
            appDelegate.saveContext()
        }
    }
}
