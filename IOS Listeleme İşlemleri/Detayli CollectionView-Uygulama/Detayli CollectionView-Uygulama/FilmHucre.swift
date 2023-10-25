//
//  FilmHucre.swift
//  Detayli CollectionView-Uygulama
//
//  Created by Sena Nur Erdem on 28.02.2023.
//

import UIKit

protocol FilmHucreProtocol {
    func sepeteEkle(indexPath:IndexPath)
}

class FilmHucre: UICollectionViewCell {
    
    @IBOutlet weak var filmFiyatLabel: UILabel!
    @IBOutlet weak var filmAdiLabel: UILabel!
    @IBOutlet weak var filmImageView: UIImageView!
    
    var hucreProtocol:FilmHucreProtocol?
    var indexPath:IndexPath?
    
    @IBAction func sepeteEkleButton(_ sender: Any) {
        
        hucreProtocol?.sepeteEkle(indexPath: indexPath!)
    }
}
