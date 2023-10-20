//
//  ViewController.swift
//  Veri Transferi Storyboard Segue
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // butonlardan herhangi birine basıldığı an override metodu çalışır
        let gidecekMesaj = girdiAlani.text! // yazılan mesaj alınacak
        
        if segue.identifier == "aTob" { // b ye basarsak
            print("a dan b ye geçiş") // konsola yazar
            let gidilecekVC = segue.destination as! ViewControllerB
            // gideceği sınıftan bir nesne oluşturur
            
            gidilecekVC.mesajB = gidecekMesaj
            // değişkene erişir mesajı aktarır
        }
        if segue.identifier == "aToc" { // c ye basarsak
            print("a dan c ye geçiş")
            
            let gidilecekVC = segue.destination as! ViewControllerC
            // gideceği sınıftan bir nesne oluşturur
            
            gidilecekVC.mesajC = gidecekMesaj
            // değişkene erişir mesajı aktarır
        }
    }
}

