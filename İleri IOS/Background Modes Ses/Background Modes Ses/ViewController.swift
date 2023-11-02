//
//  ViewController.swift
//  Background Modes Ses
//
//  Created by Sena Nur Erdem on 1.11.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var sesOynatici: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ses oynatıcıya gerekli dosyanın aktarılması
        do {
            let dosyaYolu = Bundle.main.path(forResource: "music", ofType: ".mp3")
            sesOynatici = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: dosyaYolu!))
            sesOynatici.prepareToPlay()
        } catch {
            print(error.localizedDescription)
        }
    }

    @IBAction func basla(_ sender: Any) {
        sesOynatici.play()
    }
    @IBAction func dur(_ sender: Any) {
        sesOynatici.stop()
    }
    
}

