//
//  Kisiler.swift
//  Sayfalar Arasi Gecis
//
//  Created by Sena Nur Erdem on 1.02.2023.
//

import Foundation

class Kisiler {
    var kisiId:Int?
    var kisiAd:String?
    
    init() {
    }
    
    init(kisiId:Int,kisiAd:String){
        self.kisiId = kisiId
        self.kisiAd = kisiAd
    }
}
