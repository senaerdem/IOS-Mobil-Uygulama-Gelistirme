//
//  AnasayfaVC.swift
//  UserDefault-Login Uygulamasi
//
//  Created by Sena Nur Erdem on 1.03.2023.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true //Geri tuşu kaldırılır
        
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos" //UserDefaults nesnesinden bir metin dizesi okur.
        //Bu metin dizesi, daha önce kaydedilen bir kullanıcı adını temsil eder. Eğer bu anahtarla bir değer kaydedilmemişse, ?? operatörü ile birlikte "bos" varsayılan bir değer atanır.
        labelSonuc.text = ka //ka değişkenindeki metin dizisini etikete atar. Bu, etiketin görüntülediği metni günceller.
    } //Sonuç olarak, bu kod bloğu, daha önce kaydedilmiş bir kullanıcı adını okur ve bu kullanıcı adını bir etikete yazdırır. Eğer bu kullanıcı adı daha önce kaydedilmemişse, etikete "bos" metni yazdırır.
    
    @IBAction func cikisYap(_ sender: Any) {
        
        d.removeObject(forKey: "kullaniciAdi")
        d.removeObject(forKey: "sifre")
        
        exit(-1) // anasayfaya atar
    }
    
}
