//
//  ViewController.swift
//  URL Session Calismasi
//
//  Created by Sena Nur Erdem on 3.11.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        kisiEkle()
    }
    
    func kisiEkle(){
        
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/insert_kisiler.php")!)
        //post isteği yapılacak url
        request.httpMethod = "POST"//Metod türü
        
        let postString = "kisi_ad=TESTad&kisi_tel=TESTtel"//Gönderilecek veriler & işareti ile ayrılır.
        
        request.httpBody = postString.data(using: .utf8)//Veri gönderilirken türkçeye uygun olmalıdır.
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if error != nil || data == nil {//hata ve veri kontrolü
                print("Hata")
                return//Hata oluşursa task çalışması durdurulur.
            }
            
            do {
                if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any] {
                    //gelen JSON Verisinin hepsini alır.
                    print(json)
                }
            } catch {
                print("JSON error: \(error.localizedDescription)")
            }
            
        }.resume()
    }
    
    func kisiSil() {
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/delete_kisiler.php")!)
        request.httpMethod = "POST"
        let postString
    }
}

