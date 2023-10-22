//
//  ViewController.swift
//  Kullanici Etkilesimi Calismasi
//
//  Created by Sena Nur Erdem on 19.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func basitAlertGoster(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        // Alert için başlık, mesaj ve türü belirlenir.
        // Not: preferredStyle özelliği ile gösterilme türü değiştirilebilir. alert ve actionSheet türleri kullanılabilr.
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel) {
            // Alert üzerine buton oluşturulur. Başlığı ve türü belirlenir.
            // 3 adet tür vardır. cancel: iptal işlemi için , default: varsayılan , destructive: kırmızı uyarılı button
            action in
            print("iptal tıklandı")
        }
        alertController.addAction(iptalAction) // Oluşturulan button alert üzerine eklenir.
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive) {
            action in
            print("tamam tıklandı")
        }
        alertController.addAction(tamamAction)
        
        self.present(alertController,animated: true) // Alert gösterilir.
    }
    
    
    
    
    // ÖZEL ALERT
    // İstenirse alert içerisinden kullanıcıdan veri alınabilir. Bu işlem için alert içerisine textfield yerleştirilir.
    @IBAction func ozelAlertGoster(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        alertController.addTextField { textfield in // alert içine texfield eklenir
            textfield.placeholder = "Email" // texfield içine placeholder yerleştirilir
            textfield.keyboardType = .emailAddress // klavye türü belirlenir
        }
        alertController.addTextField { textfield in
            textfield.placeholder = "Şifre"
            textfield.isSecureTextEntry = true // şifre giriş için noktalı girir özelliği
        }
        
        let kaydetAction = UIAlertAction(title: "Kaydet", style: .cancel) {
            action in
            print("kaydet tıklandı")
            
            let alinanEmail = (alertController.textFields![0] as UITextField).text!
            // textfield içerisindeki veriyi index numarasına göre alırız.
            // Upcasting yapılarak dönüşüm sağlanır.
            let alinanSifre = (alertController.textFields![1] as UITextField).text!
            
            self.labelSonuc.text = "Email: \(alinanEmail) - Şifre: \(alinanSifre)"
        }
        alertController.addAction(kaydetAction)
        self.present(alertController,animated: true)
    }
    
    // ACTION SHEET
    // Action sheet alert yapısının görsel olarak tarzının değiiştirilmiş halidir
    @IBAction func actionSheetGoster(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){ action in
            print("action sheet : iptal tıklandı")
        }
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){ action in
            print("action sheet : tamam tıklandı")
        }
        alertController.addAction(tamamAction)
        
        self.present(alertController,animated: true)
    }
}

