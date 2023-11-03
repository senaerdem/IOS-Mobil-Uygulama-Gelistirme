//
//  ViewController.swift
//  Bildirim Olusturma
//
//  Created by Sena Nur Erdem on 1.11.2023.
//

import UIKit
import UserNotifications // Gerekli framework

class ViewController: UIViewController {
    
    var izinKontrol:Bool = false
    // Kullanıcının bildirim özelliğine iznini takip etmek için kullanılır

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().delegate = self
        // Ön planda çalışması için extension bağlanır

        // İzin kontrolü alert, sound, badge özelliklerine onay verilir
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge], completionHandler: {(granted,error) in
            self.izinKontrol = granted
            // izin verildiyse burası çalışır
            // granted: true veya false döner
            if granted {
                print("İzin alma işlemi başarılı")
            } else {
                print("izin alma işlemi başarısız")
            }
        })
    }

    @IBAction func bildirimOlustur(_ sender: Any) {
        if izinKontrol {
            
            let evet = UNNotificationAction(identifier: "evet", title: "Evet", options: .foreground)
            let hayir = UNNotificationAction(identifier: "hayir", title: "Hayir", options: .foreground)
            let sil = UNNotificationAction(identifier: "sil", title: "Sil", options: .destructive)
            
            let kategori = UNNotificationCategory(identifier: "kat", actions: [evet,hayir,sil], intentIdentifiers: [], options: [])
            
            UNUserNotificationCenter.current().setNotificationCategories([kategori])
            
            let icerik = UNMutableNotificationContent()
            icerik.title = "Başlık"
            icerik.subtitle = "Alt Başlık"
            icerik.body = "5 , 4'den büyük mü ?"
            icerik.badge = 1
            icerik.sound = UNNotificationSound.default
            
            icerik.categoryIdentifier = "kat"
            
            /* var date = DateComponents()
            date.minute = 30
            date.hour = 8
            date.day = 20
            date.month = 4
            
            let tetikleme = UNCalendarNotificationTrigger(dateMatching: date, repeats: true) */
            
            let tetikleme = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
            
            let bildirimIstegi = UNNotificationRequest(identifier: "Bildirim Olusturma", content: icerik, trigger: tetikleme)
            
            UNUserNotificationCenter.current().add(bildirimIstegi,withCompletionHandler: nil)
        }
    }
    
}

// Bildirimin ön planda çalışması için gerekli yapı
extension ViewController:UNUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        completionHandler([.banner,.sound,.badge])
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        if response.actionIdentifier == "evet" {
            print("Doğru Cevap")
        }
        if response.actionIdentifier == "hayir" {
            print("Yanlış Cevap")
        }
        if response.actionIdentifier == "sil" {
            print("Cevap verilemedi")
        }
        
        completionHandler()
        
    }
}
