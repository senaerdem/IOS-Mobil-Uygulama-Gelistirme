//
//  ViewController.swift
//  Button Label Textfield
//
//  Created by Sena Nur Erdem on 19.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    // Yazıları tutan bir görsel nesnedir.
    // Üzerinde editleme olmaz statiktir.
    // Görsel nesneye yazık yüklemek için label.text = "yazı"
    // Görsel nesnedeki veriyi almak için label.text metodu kullanılır.
    
    @IBOutlet weak var textfield: UITextField!
    // Textfield ile uygulamaya kullanıcı veri girebilmektedir.
    // Görsel nesneye yazık yüklemek için textfield.text = "yazı"
    // Görsel nesnedeki veriyi almak için textfield.text metodu kullanılır.
    // Textfield ile veri alırken veriler String türünde gelir.
    
    @IBOutlet weak var textview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tikla(_ sender: Any) {
        // Textfield gibi alanlardan veri alınırken kontrol yapmakta fayda vardır.
        // Optional olduğu için null olabilir.
        
        if let alinanVeri = textfield.text {
            // Optional ifade korunaklı bir şekilde alındı.
            
            if let sayi = Int(alinanVeri) { // int veri tipine dönüşüm
                // sorun olmaması için optional bining yaptık
                
                let islem = sayi * 2 // girilen sayıyı 2 ile çarpar
                
                etiket.text = String(islem) // etiket string istediği için dönüşüm yaparız
                
            }
            
        }
        
        if let veri = textview.text {
            print(veri)
        }
    }
    
}

