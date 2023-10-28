//
//  QuizEkraniVC.swift
//  Bayrak Uygulamasi
//
//  Created by Sena Nur Erdem on 2.04.2023.
//

import UIKit

class QuizEkraniVC: UIViewController {

    @IBOutlet weak var imageViewBayrak: UIImageView!
    @IBOutlet weak var labelSoruSayisi: UILabel!
    
    @IBOutlet weak var labelYanlis: UILabel!
    @IBOutlet weak var labelDogru: UILabel!
    
    @IBOutlet weak var buttona: UIButton!
    @IBOutlet weak var buttonb: UIButton!
    @IBOutlet weak var buttonc: UIButton!
    @IBOutlet weak var buttond: UIButton!
    
    var sorular = [Bayraklar]()
    var yanlisSecenekler = [Bayraklar]()
    
    var dogruSoru = Bayraklar()
    
    var soruSayac = 0
    var dogruSayac = 0
    var yanlisSayac = 0
    
    var secenekler = [Bayraklar]()
    var seceneklerKaristimaListesi = Set <Bayraklar>() //içerisine eklene veriler rastgele karışır
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sorular = Bayraklardao().rasgele5Getir()
        
        for s in sorular {
            print(s.bayrak_ad!)
        }
        
        soruYukle()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let gidilecekVC = segue.destination as! SonucEkraniVC
        gidilecekVC.dogruSayisi = dogruSayac
    }
    
    
    
    func soruYukle(){
        labelSoruSayisi.text = "\(soruSayac+1). SORU"
        labelDogru.text = "Doğru : \(dogruSayac)"
        labelYanlis.text = "Yanlış : \(yanlisSayac)"
        
        dogruSoru = sorular[soruSayac]
        
        imageViewBayrak.image = UIImage(named: dogruSoru.bayrak_resim!)
        
        yanlisSecenekler = Bayraklardao().rasgele3YanlisSecenekGetir(bayrak_id: dogruSoru.bayrak_id!)
        
        seceneklerKaristimaListesi.removeAll()
        
        seceneklerKaristimaListesi.insert(dogruSoru)
        seceneklerKaristimaListesi.insert(yanlisSecenekler[0])
        seceneklerKaristimaListesi.insert(yanlisSecenekler[1])
        seceneklerKaristimaListesi.insert(yanlisSecenekler[2])
        
        secenekler.removeAll()
        
        for s in seceneklerKaristimaListesi {
            secenekler.append(s)
        }
        
        buttona.setTitle(secenekler[0].bayrak_ad, for: .normal)
        buttonb.setTitle(secenekler[1].bayrak_ad, for: .normal)
        buttonc.setTitle(secenekler[2].bayrak_ad, for: .normal)
        buttond.setTitle(secenekler[3].bayrak_ad, for: .normal)
           
    }
    
    func dogruKontrol(button:UIButton) {
        let buttonYazi = button.titleLabel?.text
        let dogruCevap = dogruSoru.bayrak_ad
        
        print("Botton Yazi : \(buttonYazi!)")
        print("Doğru Cevap : \(dogruCevap!)")
        
        if dogruCevap == buttonYazi {
            dogruSayac = dogruSayac + 1
        }
        else {
            yanlisSayac = yanlisSayac + 1
        }
        
        labelDogru.text = "Doğru : \(dogruSayac)"
        labelYanlis.text = "Yanlış : \(yanlisSayac)"
    }
    
    func soruSayacKontrol(){
        soruSayac = soruSayac + 1
        
        if soruSayac != 5 {
            soruYukle()
        }
        else {
            performSegue(withIdentifier: "toSonucEkrani", sender: nil)
        }
    }
    
    
    @IBAction func buttonA(_ sender: Any) {
        dogruKontrol(button: buttona)
        soruSayacKontrol()
    }
    @IBAction func buttonB(_ sender: Any) {
        dogruKontrol(button: buttonb)
        soruSayacKontrol()
    }
    @IBAction func buttonC(_ sender: Any) {
        dogruKontrol(button: buttonc)
        soruSayacKontrol()
    }
    @IBAction func buttonD(_ sender: Any) {
        dogruKontrol(button: buttond)
        soruSayacKontrol()
    }
}
