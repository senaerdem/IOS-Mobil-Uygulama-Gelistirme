//
//  ViewController.swift
//  Sayfalar Arasi Gecis
//
//  Created by Sena Nur Erdem on 30.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girdiAlani: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func gonder(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        // Gidilmek istenen sayfanın bulunduğu storyboard tanımlanır.
        
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfaB") as! ViewControllerB
        // as! ile Downcatsing yapılır.
        // gidilmek istenen sayfanın idsini yazarak View Controller nesneni oluşturulur.
        
        let gonderilecekMesaj = girdiAlani.text // Gönderilecek veriyi textfielddan alma işlemi
        
        gidilecekViewController.mesaj = gonderilecekMesaj!
        // Verinin ulaşması istenen sınıftan bir nesne ile mesaj değişkenine erişim sağlanır ve veri eklenir.
        
        let gidecekKisi = Kisiler(kisiId: 222, kisiAd: "Sena")
        gidilecekViewController.kisi = gidecekKisi
        
        //self.present(gidilecekViewController, animated: true, completion: nil)
        
        // Modal geçiş
        self.navigationController?.pushViewController(gidilecekViewController, animated: true)
        
        
    }
}

