//
//  ViewController.swift
//  UserDefaults
//
//  Created by Sena Nur Erdem on 1.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let d = UserDefaults.standard //Kullanım için kurulum
        
        d.set("Sena", forKey: "ad")
        d.set(22, forKey: "yas")
        d.set(1.63, forKey: "boy")
        d.set(false, forKey: "medeniDurum")
        
        let arkadasListesi = ["ali","veyse","ece"]
        d.set(arkadasListesi, forKey: "liste")
        
        let sehirlerListesi:[String:String] = ["16":"Bursa","34":"İstanbul","6":"Ankara"]
        //Dictionary kullanılabilir fakat sadece [String:String] türünde geçerlidir.
        d.set(sehirlerListesi, forKey: "dict") //Dictionary
        
        // Veri Okuma
        let ad = d.string(forKey: "ad") ?? "isim yok" //?? koyarak varsayılan değer ataması yapabiliriz
        let yas = d.integer(forKey: "yas")
        let boy = d.double(forKey: "boy")
        let medeniDurum = d.bool(forKey: "medeniDurum")
        
        print(ad)
        print(yas)
        print(boy)
        print(medeniDurum)
        
        let liste = d.array(forKey: "liste") as? [String] ?? [String]()
        //as? den sonra gelen dönüştürülecek tip.
        //?? den sonra gelen userdefaulttan veri alırken sıkıntı olursa varsayılan olarak boş bir string liste aktarılır
        print(arkadasListesi[0])
        print(arkadasListesi[1])
        print(arkadasListesi[2])
        
        let dict = d.dictionary(forKey: "dict") as? [String:String] ?? [String:String]()
        print(dict["16"]!)
        print(sehirlerListesi["16"]!)
        print(sehirlerListesi["34"]!)
        print(sehirlerListesi["6"]!)
        
        // Veri Silme
        //d.removeObject(forKey: "ad")
        //let adx = d.string(forKey: "ad") ?? "isim yok"
        //print(adx)
        
        // Veri Güncelleme
        d.set("yeni Sena", forKey: "ad")
        // Güncelleme aslında veri kayıt işleminin devamıdır.
        let adx = d.string(forKey: "ad") ?? "isim yok"
        print(adx)
    }


}

