//
//  NotEkleViewController.swift
//  OgrenciNotUygulamasi
//
//  Created by Sena Nur Erdem on 27.10.2023.
//

import UIKit

class NotEkleViewController: UIViewController {

    @IBOutlet weak var textfieldNot2: UITextField!
    @IBOutlet weak var textfieldNot1: UITextField!
    @IBOutlet weak var textfieldDersAdi: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func notEkle(_ sender: Any) {
        if let ad = textfieldDersAdi.text, let not1 = textfieldNot1.text, let not2 = textfieldNot2.text {
            
            if let n1 = Int(not1) , let n2 = Int(not2) {
                Notlardao().notEkle(ders_adi: ad, not1: n1, not2: n2)
            }
            
            
        }
    }
}
