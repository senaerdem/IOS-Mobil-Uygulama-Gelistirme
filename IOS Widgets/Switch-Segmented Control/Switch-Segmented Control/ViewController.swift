//
//  ViewController.swift
//  Switch-Segmented Control
//
//  Created by Sena Nur Erdem on 19.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiswitch: UISwitch!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func switchKonumDegistir(_ sender: UISwitch) {
        
        if sender.isOn {
            print("switch açık")
        }
        else {
            print("switch kapalı")
        }
    }
    
    @IBAction func segmentedDegisimKontrol(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            print("segmented AÇ seçildi")
        }
        if sender.selectedSegmentIndex == 1 {
            print("segmented KAPAT seçildi")
        }
    }
    
    @IBAction func tikla(_ sender: Any) {
        
        print("Switch Durum : \(uiswitch.isOn)")
        
        print("Segmented Durum : \(segmentedControl.selectedSegmentIndex)")
    }
    
}

