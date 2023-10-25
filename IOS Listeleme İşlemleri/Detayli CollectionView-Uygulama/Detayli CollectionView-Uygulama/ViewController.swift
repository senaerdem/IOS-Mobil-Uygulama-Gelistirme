//
//  ViewController.swift
//  Detayli CollectionView-Uygulama
//
//  Created by Sena Nur Erdem on 28.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var filmCollectionView: UICollectionView!
    
    var filmlerListesi = [Filmler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tasarim:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        let genislik = self.filmCollectionView.frame.size.width
        
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        tasarim.minimumLineSpacing = 10
        tasarim.minimumInteritemSpacing = 10
        
        let hucreGenislik = (genislik-30)/2
        
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik*1.6)
        
        filmCollectionView!.collectionViewLayout = tasarim
        
        filmCollectionView.delegate = self
        filmCollectionView.dataSource = self
        
        let f1 = Filmler(filmId: 1, filmBaslik: "Django", filmResimAdi: "django", filmFiyat: 15.99)
        let f2 = Filmler(filmId: 2, filmBaslik: "Inception", filmResimAdi: "inception", filmFiyat: 17.45)
        let f3 = Filmler(filmId: 3, filmBaslik: "Interstellar", filmResimAdi: "interstellar", filmFiyat: 22.99)
        let f4 = Filmler(filmId: 4, filmBaslik: "The Pianist", filmResimAdi: "thepianist", filmFiyat: 23.99)
        let f5 = Filmler(filmId: 5, filmBaslik: "The Hatefull Eight", filmResimAdi: "thehatefuleight", filmFiyat: 16.00)
        let f6 = Filmler(filmId: 6, filmBaslik: "Anadoluda", filmResimAdi: "birzamanlaranadoluda", filmFiyat: 45.50)
        
        filmlerListesi.append(f1)
        filmlerListesi.append(f2)
        filmlerListesi.append(f3)
        filmlerListesi.append(f4)
        filmlerListesi.append(f5)
        filmlerListesi.append(f6)
    }


}

extension ViewController:UICollectionViewDataSource,UICollectionViewDelegate,FilmHucreProtocol {
    
    func sepeteEkle(indexPath: IndexPath) {
        let film = filmlerListesi[indexPath.row]
        print("\(film.filmBaslik!) filmi sipariş verildi. Kazanç \(film.filmFiyat!) TL. ")
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmlerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let film = filmlerListesi[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmHucre", for: indexPath) as! FilmHucre
        
        cell.filmAdiLabel.text = film.filmBaslik!
        cell.filmFiyatLabel.text = "\(film.filmFiyat!) TL"
        cell.filmImageView.image = UIImage(named:film.filmResimAdi!)
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        cell.layer.borderColor = UIColor.systemFill.cgColor
        cell.layer.borderWidth = 0.5
        
        return cell
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let film = filmlerListesi[indexPath.row]
        print("\(film.filmBaslik!) filmi seçildi.")
    }
    
}

