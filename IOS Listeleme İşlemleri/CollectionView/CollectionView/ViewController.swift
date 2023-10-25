//
//  ViewController.swift
//  CollectionView
//
//  Created by Sena Nur Erdem on 28.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var ulkeler:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // CollectionView Hücrelerinin Ekran Üzerinde Düzenlenmesi
        // Hücreler ekran üzerinde yatayda kac adet olacağı, hücreler arası boşluklar gibi parametreler ile tasarım daha düzenli olur.
        let tasarim:UICollectionViewFlowLayout = UICollectionViewFlowLayout() //Tasarım tanımlanır.

        let genislik = self.collectionView.frame.size.width //CollectionView genişliği(Ekran genişliği)
        
        //Section Inset: Ekran ile collection view arasında kalan boşluktur.
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10) //Hücrelerin ekrana yakın olan kenarlarının uzaklığı
        
        // Dinamik Şekilde Hücre Boyutlandırma
        // yatayda hucre boyutu = (ekran genişliği - toplam bolşuk) / yatayda hücre sayısı
        tasarim.itemSize = CGSize(width: (genislik-30)/3, height: (genislik-30)/3)
        //Örn: Hücrenin boyutu. Yatayda üç hücre iki tanesinin arasında 5 boşluk olmasını istersek.
        //Toplam sol inset 10, sağ inset 10, 3 hücrenin arasında yer alan 2 adet 5 boşluk ile toplam 30 boşluk olur.
        //Boşluklar haricinde kalan alana 3 adet hücreleri yerleştiririz.
        
        tasarim.minimumInteritemSpacing = 5 //Yatayda hücreler arası boşluk
        tasarim.minimumLineSpacing = 5 //Dikeyde hücreler arası boşluk
        
        collectionView!.collectionViewLayout = tasarim //layoutun uygulanması. tasarım collection view'e yüklenir.
        
        ulkeler = ["Türkiye","Almanya","Japonya","Rusya","İtalya","Güney Kore","Fransa","Mısır"]
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
}

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ulkeler.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ulkeHucre", for: indexPath) as! CollectionViewHucre
        
        cell.hucreLabel.text = ulkeler[indexPath.row]
        
        cell.layer.borderColor = UIColor.blue.cgColor
        cell.layer.borderWidth = 0.5
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Seçilen Ülke : \(ulkeler[indexPath.row])")
    }
    
    
}
