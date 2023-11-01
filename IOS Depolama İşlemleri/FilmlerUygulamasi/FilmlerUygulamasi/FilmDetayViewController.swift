//
//  FilmDetayViewController.swift
//  FilmlerUygulamasi
//
//  Created by Sena Nur Erdem on 27.10.2023.
//

import UIKit

class FilmDetayViewController: UIViewController {

    @IBOutlet weak var labelFilmYonetmen: UILabel!
    @IBOutlet weak var labelFilmKategori: UILabel!
    @IBOutlet weak var labelFilmYil: UILabel!
    @IBOutlet weak var labelFilmAd: UILabel!
    @IBOutlet weak var imageViewFilmResim: UIImageView!
    
    var film:Filmler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let f = film {
            imageViewFilmResim.image = UIImage(named: f.film_resim!)
            labelFilmAd.text = f.film_ad
            labelFilmYil.text = String(f.film_yil!)
            
            labelFilmKategori.text = f.kategori?.kategori_ad
            labelFilmYonetmen.text = f.yonetmen?.yonetmen_ad
        }
    }
  
}
