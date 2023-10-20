//
//  Kisiler.swift
//  Kod ile Segue Gecisi
//
//  Created by Sena Nur Erdem on 12.09.2022.
//

import Foundation

class Kisiler {
    var kisiId:Int?
    var kisiAd:String?
    
    init() {
    }
    
    init(kisiId:Int,kisiAd:String) {
        self.kisiId = kisiId //shadowing
        self.kisiAd = kisiAd
    }
}
