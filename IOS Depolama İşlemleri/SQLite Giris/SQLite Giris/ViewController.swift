//
//  ViewController.swift
//  SQLite Giris
//
//  Created by Sena Nur Erdem on 31.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        veritabaniKopyala()
        
        // Kisilerdao().kisiEkle(kisi_ad: "Sena", kisi_yas: 22)
        // Kisilerdao().kisiEkle(kisi_ad: "Melike", kisi_yas: 23)
        // Kisilerdao().kisiEkle(kisi_ad: "Beyza", kisi_yas: 24)
        
        // Kisilerdao().kisiSil(kisi_id: 2)
        
        // Kisilerdao().kisiGuncelle(kisi_id: 3, kisi_ad: "yeni Sena", kisi_yas: 33)
        
        // let sonuc = Kisilerdao().kisiKontrol(kisi_ad: "Aybüke")
        
        // print("Sonuç: \(sonuc)")
        
        // let gelenliste = Kisilerdao().tumKisilerAl()
        
        // let gelenliste = Kisilerdao().aramaYap(kisi_ad: "et")
        
        // let gelenliste = Kisilerdao().tumKisilerAlLimit()
        
        let gelenliste = Kisilerdao().rasgele2Kisi()
        
        for k in gelenliste {
            print("ID: \(k.kisi_id!) - AD: \(k.kisi_ad!) - YAŞ: \(k.kisi_yas!)")
        }
    }

    
    func veritabaniKopyala(){
        
        // veritabanı bundle içinde yer alır
        // uygulama ilk çalıştığında veritabanı bundledan ciahzın içine kopyalanmalıdır
        
        let bundleYolu = Bundle.main.path(forResource: "kisilergiris", ofType: ".sqlite")
        
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        let fileManager = FileManager.default
        
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("kisilergiris.sqlite")
        
        if fileManager.fileExists(atPath: kopyalanacakYer.path) {
            print("Veritabanı zaten var. Kopyalamaya gerek yok.")
        }
        else {
            do {
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
            }
            catch {
                print(error)
            }
        }
    }

}

