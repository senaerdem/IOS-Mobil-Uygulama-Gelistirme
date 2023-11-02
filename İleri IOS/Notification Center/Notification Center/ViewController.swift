//
//  ViewController.swift
//  Notification Center
//
//  Created by Sena Nur Erdem on 1.11.2023.
//

import UIKit

extension Notification.Name {
    static let bildirimAdi = Notification.Name("benimYayin")
    // Notification ismini global erişim haline getirdik
    // Bu şekilde istenilen büyün sayfalardan .bildirimAdi ile erişilebilecektir
}

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // bildirim yakalandığı zaman selector parametresindeki metod çalıştırılır
        NotificationCenter.default.addObserver(self, selector: #selector(self.yap(notification:)), name: .bildirimAdi, object: nil)
        // name: önemlidir gönderen tarafla aynı olmalıdır
    }
    
    @objc func yap(notification:NSNotification) {
        // notification nesnesi userInfo ile gönderilen bilgileri almak için kullanılır
        let gelenMesaj = notification.userInfo?["mesaj"]
        let gelenTarih = notification.userInfo?["tarih"]
        let gelenKisiNesnesi = notification.userInfo?["nesne"] as! Kisiler
        
        labelSonuc.text = "\(gelenKisiNesnesi.kisi_ad!) - \(gelenTarih!) - \(gelenMesaj)"
    }
}

