//
//  ViewController2.swift
//  Notification Center
//
//  Created by Sena Nur Erdem on 1.11.2023.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func gonder(_ sender: Any) {
        let kisi = Kisiler(kisi_ad: "Sena", kisi_yas: 22)
        
        // name: önemlidir karşı taraf aynı isim ile yakalayabilir
        NotificationCenter.default.post(name: .bildirimAdi, object: nil, userInfo: ["mesaj":"merhaba","tarih":Date(),"nesne":kisi])
        // userInfo ile dictionary formatunda veri gönderilebilir
        
        dismiss(animated: true, completion: nil)
    }
    
}
