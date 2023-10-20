//
//  ViewController.swift
//  Veri Transferi Perform Segue(Yaygin Yontem)
//
//  Created by Sena Nur Erdem on 2.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girdiAlani: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func gonderB(_ sender: Any) {
        
        let alinanVeri = girdiAlani.text! // girilen texti alır
        
        performSegue(withIdentifier: "aTob", sender: alinanVeri)
    }
    
    @IBAction func gonderC(_ sender: Any) {
        
        let alinanVeri = girdiAlani.text!
        
        performSegue(withIdentifier: "aToc", sender: alinanVeri)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // alınan text prepare metodu gönderilir
        
        if segue.identifier == "aTob" {
            print("B ye geçiş oldu")
            
            if let veri = sender as? String { // alınan veri string türüne dönüştürülür
                
                let gidilecekVC = segue.destination as! ViewControllerB // optional bining yaptık
                
                gidilecekVC.mesajB = veri
            }
        }
        if segue.identifier == "aToc" {
            print("C ye geçiş oldu")
            
            if let veri = sender as? String {
                
                let gidilecekVC = segue.destination as! ViewControllerC
                
                gidilecekVC.mesajC = veri
            }
        }
    }
    
}

