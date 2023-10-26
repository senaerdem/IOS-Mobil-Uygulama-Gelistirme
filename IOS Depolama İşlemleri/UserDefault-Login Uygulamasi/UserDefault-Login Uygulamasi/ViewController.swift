//
//  ViewController.swift
//  UserDefault-Login Uygulamasi
//
//  Created by Sena Nur Erdem on 1.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfieldSifre: UITextField!
    @IBOutlet weak var textfieldKullaniciAdi: UITextField!
    
    let d = UserDefaults.standard //userDefault nesnesi oluşur
    //UserDefaults nesnesi, kullanıcının uygulamayı kapatıp tekrar açtığında giriş bilgilerinin hatırlanmasını sağlar.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        let s = d.string(forKey: "sifre") ?? "bos"
        
        if ka != "bos" && s != "bos" { //kullanıcı adı ve şifre daha önce girildiyse
            performSegue(withIdentifier: "girisToAnasayfa", sender: nil) //Anasayfaya yönlendirilir
        }
    }


    @IBAction func girisYap(_ sender: Any) {
        
        if let ka = textfieldKullaniciAdi.text , let s = textfieldSifre.text {
            
            if ka == "admin" && s == "123456" {
                d.set(ka, forKey: "kullaniciAdi")
                d.set(s, forKey: "sifre")

                performSegue(withIdentifier: "girisToAnasayfa", sender: nil)
            }
            else {
                print("HATALI GİRİŞ")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
}

