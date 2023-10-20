//
//  ViewController.swift
//  Navigation Controller Calismasi
//
//  Created by Sena Nur Erdem on 4.02.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.navigationItem.title = "Başlık Kod ile" // başlık ekler
        //self.navigationItem.prompt = "Açıklama Kod ile" // açıklama ekler
        
        //self.navigationItem.largeTitleDisplayMode = .never // nav contorllerın küçük açılması için
        //self.navigationItem.largeTitleDisplayMode = .always // nav contorllerın büyük açılması için
        
        //let resim = UIImage(named: "navBaslik")
        // Assets içindeki image set adıyla resme ulaşılır.
        //self.navigationItem.titleView = UIImageView(image: resim)
        // Navigation item üzerindeki başlığa resim eklenir.
    }

    @IBAction func playTikla(_ sender: Any) {
        print("play tiklandi")
    }
    
    @IBAction func kalpTikla(_ sender: Any) {
        print("mor ev tiklandi")
    }
    @IBAction func segmentTiklandi(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            print("first tıklandı")
        case 1:
            print("second tıklandı")
        default:
            break
        }
    }
}

