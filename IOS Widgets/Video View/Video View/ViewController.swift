//
//  ViewController.swift
//  Video View
//
//  Created by Sena Nur Erdem on 19.02.2023.
//

import UIKit

import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func oynat(_ sender: Any) {
        
        if let dosyaYolu = Bundle.main.path(forResource: "video", ofType: "mp4") {
            
            let oynatici = AVPlayer(url: URL(fileURLWithPath: dosyaYolu))
            
            let oynaticiKontrol = AVPlayerViewController()
            
            oynaticiKontrol.player = oynatici
            
            present(oynaticiKontrol,animated: true) {
                oynatici.play()
            }
            
        }
        
    }
    
}

