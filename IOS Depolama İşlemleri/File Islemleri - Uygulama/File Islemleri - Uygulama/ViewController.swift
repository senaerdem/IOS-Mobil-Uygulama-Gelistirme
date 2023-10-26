//
//  ViewController.swift
//  File Islemleri - Uygulama
//
//  Created by Sena Nur Erdem on 5.03.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textfieldGirdi: UITextField!
    
    @IBOutlet weak var resimTutucu: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }


    @IBAction func yaz(_ sender: Any) {
        let mesaj:String = textfieldGirdi.text! //Textfield üzerinden kayıt edilecek veri alınır.
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            //dokuman yolu alnır
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt") //Kayıt edilmek istenen dosya yolu ve dosya oluşturulur.
            
            //yazma işlemleri
            do {
                try mesaj.write(to: dosyaYolu, atomically: false, encoding: String.Encoding.utf8)
                //veri kaydedildi
                textfieldGirdi.text = "" //Yazı kayıt edildikten sonra textfield boşaltılır.
            }
            catch { /* hata işlemleri burada yapılır */
                print("Dosya yazılırken hata oluştu.")
            }
        }
    }
    
    @IBAction func sil(_ sender: Any) {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            //dokuman yolu alnır
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt")
            //Silinmek istenen dosya adı ile dosya yolu alınır.
            
            if FileManager.default.fileExists(atPath: dosyaYolu.path) {
                //Silinmek istenen dosya var mı yok mu kontrolü yapılır
                
                //Silme işlemi
                do {
                    try FileManager.default.removeItem(at: dosyaYolu)
                    textfieldGirdi.text = "" //Yazı kayıt edildikten sonra textfield boşaltılır.
                }
                catch { /* hata işlemleri burada yapılır */
                    print("Dosya silinirken hata oluştu.")
                }
            }
            
        }
    }
    
    @IBAction func oku(_ sender: Any) {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            //doküman yolu alınır.
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt")
            //Okunmak istenen dosya adı ile dosya yolu alınır.
            
            //okuma işlemi
            do {
                textfieldGirdi.text = try String(contentsOf: dosyaYolu, encoding: String.Encoding.utf8)
                //okunan veri textfield içine aktarılır.
            }
            catch { /* hata işlemleri burada yapılır */
                print("Dosya okunurken hata oluştu.")
            }
        }
    }
    
    @IBAction func resimKaydet(_ sender: Any) {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            //doküman yolu alınır.
            let dosyaYolu = dir.appendingPathComponent("resimim.png")
            //Kayıt edilmek istenen dosya yolu ve dosya oluşturulur.
            
            let resim = UIImage(named: "resim") //asset dosyasından resmi alıyoruz
            
            //yazma işlemi
            do {
                try resim!.pngData()?.write(to: dosyaYolu)
            }
            catch { /* hata işlemleri burada yapılır */
                print("Resim kaydedilirken hata oluştu.")
            }
        }
    }
    
    @IBAction func resimSil(_ sender: Any) {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            //doküman yolu alınır.
            let dosyaYolu = dir.appendingPathComponent("resimim.png")
            //Silinmek istenen dosya adı ile dosya yolu alınır.
            
            if FileManager.default.fileExists(atPath: dosyaYolu.path) { //Silinmek istenen dosya var mı yok mu kotnrolü yapılır
                
                //Silme işlemi
                do {
                    try FileManager.default.removeItem(at: dosyaYolu)
                }
                catch { /* hata işlemleri burada yapılır */
                    print("Resim silinirken hata oluştu.")
                }
            }
            
        }
    }
    
    @IBAction func resimGoster(_ sender: Any) {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("resimim.png")

            self.resimTutucu.image = UIImage(contentsOfFile: dosyaYolu.path)
        }
    }
    
}

