//
//  Kategoriler.swift
//  FilmlerUygulamasi
//
//  Created by Sena Nur Erdem on 27.10.2023.
//

import Foundation

class Kategoriler{
    var kategori_id:Int?
    var kategori_ad:String?
    
    init() {
        
    }
    
    init(kategori_id:Int, kategori_ad:String) {
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}
