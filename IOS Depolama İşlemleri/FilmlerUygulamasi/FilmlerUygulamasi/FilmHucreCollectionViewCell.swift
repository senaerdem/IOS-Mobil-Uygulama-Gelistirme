//
//  FilmHucreCollectionViewCell.swift
//  FilmlerUygulamasi
//
//  Created by Sena Nur Erdem on 27.10.2023.
//

import UIKit

protocol FilmHucreCollectionViewCellProtocol {
    func sepeteEkle(indexPath:IndexPath)
}

class FilmHucreCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var labelFilmFiyat: UILabel!
    @IBOutlet weak var labelFilmAd: UILabel!
    @IBOutlet weak var imageViewFilmResim: UIImageView!
    
    var hucreProtocol:FilmHucreCollectionViewCellProtocol?
    var indexPath:IndexPath?
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.sepeteEkle(indexPath: indexPath!)
    }
    
}
