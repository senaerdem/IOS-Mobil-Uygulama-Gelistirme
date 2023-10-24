//
//  File.swift
//  Detaylı Table View Kullanimi-Uygulama
//
//  Created by Sena Nur Erdem on 27.02.2023.
//

import Foundation

class Yemekler {
    var yemekId:Int?
    var yemekAd:String?
    var yemekResimAdi:String?
    var yemekFiyat:Double?
    
    init() {
        
    }
    
    init(yemekId: Int, yemekAd: String, yemekResimAdi: String, yemekFiyat: Double) {
        self.yemekId = yemekId
        self.yemekAd = yemekAd
        self.yemekResimAdi = yemekResimAdi
        self.yemekFiyat = yemekFiyat
    }
}
