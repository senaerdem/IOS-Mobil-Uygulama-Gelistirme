//
//  ViewController.swift
//  Detaylı Table View Kullanimi-Uygulama
//
//  Created by Sena Nur Erdem on 27.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yemeklerTableView: UITableView!
    
    var yemeklerListesi = [Yemekler]() // Boş bir dizi oluşturulur.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        yemeklerTableView.dataSource = self
        yemeklerTableView.delegate = self
        
        // Nesneleri Oluşturma
        let y1 = Yemekler(yemekId: 1, yemekAd: "Ayran", yemekResimAdi: "ayran", yemekFiyat: 10.0)
        let y2 = Yemekler(yemekId: 2, yemekAd: "Baklava", yemekResimAdi: "baklava", yemekFiyat: 46.0)
        let y3 = Yemekler(yemekId: 3, yemekAd: "Fanta", yemekResimAdi: "fanta", yemekFiyat: 12.0)
        let y4 = Yemekler(yemekId: 4, yemekAd: "Izgara Somon", yemekResimAdi: "izgarasomon", yemekFiyat: 150.0)
        let y5 = Yemekler(yemekId: 5, yemekAd: "Izgara Tavuk", yemekResimAdi: "izgaratavuk", yemekFiyat: 85.0)
        let y6 = Yemekler(yemekId: 6, yemekAd: "Kadayıf", yemekResimAdi: "kadayif", yemekFiyat: 36.0)
        let y7 = Yemekler(yemekId: 7, yemekAd: "Kahve", yemekResimAdi: "kahve", yemekFiyat: 33.0)
        let y8 = Yemekler(yemekId: 8, yemekAd: "Köfte", yemekResimAdi: "kofte", yemekFiyat: 55.0)
        let y9 = Yemekler(yemekId: 9, yemekAd: "Lazanya", yemekResimAdi: "lazanya", yemekFiyat: 120.0)
        let y10 = Yemekler(yemekId: 10, yemekAd: "Makarna", yemekResimAdi: "makarna", yemekFiyat: 42.0)
        let y11 = Yemekler(yemekId: 11, yemekAd: "Pizza", yemekResimAdi: "pizza", yemekFiyat: 77.0)
        let y12 = Yemekler(yemekId: 12, yemekAd: "Su", yemekResimAdi: "su", yemekFiyat: 3.50)
        let y13 = Yemekler(yemekId: 13, yemekAd: "Sütlaç", yemekResimAdi: "sutlac", yemekFiyat: 21.0)
        let y14 = Yemekler(yemekId: 14, yemekAd: "Tiramisu", yemekResimAdi: "tiramisu", yemekFiyat: 18.0)
        // Verilerin Listeye Eklenmesi
        yemeklerListesi.append(y1)
        yemeklerListesi.append(y2)
        yemeklerListesi.append(y3)
        yemeklerListesi.append(y4)
        yemeklerListesi.append(y5)
        yemeklerListesi.append(y6)
        yemeklerListesi.append(y7)
        yemeklerListesi.append(y8)
        yemeklerListesi.append(y9)
        yemeklerListesi.append(y10)
        yemeklerListesi.append(y11)
        yemeklerListesi.append(y12)
        yemeklerListesi.append(y13)
        yemeklerListesi.append(y14)
       
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource,YemekTableViewCellProtocol {
    func siparisVer(indexPath: IndexPath) {
        let gelenYemek = yemeklerListesi[indexPath.row]
        print("\(gelenYemek.yemekAd!) sipariş verildi. Kazanç \(gelenYemek.yemekFiyat!) TL")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yemeklerListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let gelenYemek = yemeklerListesi[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "yemekHucre",for: indexPath) as! YemekTableViewCell
        cell.labelYemekAdi.text = gelenYemek.yemekAd
        cell.labelYemekFiyat.text = "\(gelenYemek.yemekFiyat!) TL"
        cell.yemekResimImageView.image = UIImage(named: gelenYemek.yemekResimAdi!)
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
}
