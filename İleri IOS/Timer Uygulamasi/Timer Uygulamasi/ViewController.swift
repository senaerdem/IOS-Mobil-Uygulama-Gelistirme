//
//  ViewController.swift
//  Timer Uygulamasi
//
//  Created by Sena Nur Erdem on 1.11.2023.
//

import UIKit

// Timer, kod parçalarını belirli zaman aralıklarında çalıştırmamıza yarayan yapıdır

class ViewController: UIViewController {
    
    var sayici:Timer?
    var sayac1:Int = 1
    var sayac2:Int = 5
    @IBOutlet weak var ciktiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ciktiLabel.text = ""
    }

    @IBAction func basla(_ sender: Any) {
        sayici = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(geriSay), userInfo: nil, repeats: true)
        // timeInterval : timerın kaç saniye arayla çalışacağı
        // selector : Her timerInterval süresi doldukta sonra çalıştıracağı metod
        // repeats : timeInterval süresi bittikten sonra tekrar olsun mu olmasın mı
    }
    
    @objc func ileriSay() {
        ciktiLabel.text = String(sayac1)
        sayac1 += 1
        
        if sayac1 > 6 {
            sayici?.invalidate()
            ciktiLabel.text = "Süre bitti"
            sayac1 = 1
        }
    }
    
    @objc func geriSay() {
        ciktiLabel.text = String(sayac2)
        sayac2 -= 1
        
        if sayac2 < 0 {
            sayici?.invalidate()
            ciktiLabel.text = "Süre bitti"
            sayac2 = 5
        }
    }
}

