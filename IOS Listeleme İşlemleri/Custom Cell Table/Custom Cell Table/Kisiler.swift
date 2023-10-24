//
//  Kisiler.swift
//  Custom Cell Table
//
//  Created by Sena Nur Erdem on 27.02.2023.
//

import Foundation

class Kisiler {
    var kisiId:Int?
    var kisiAd:String?
    var kisiTel:String?
    
    init() {
        
    }
    init(kisiId:Int,kisiAd:String,kisiTel:String) {
        self.kisiId = kisiId
        self.kisiAd = kisiAd
        self.kisiTel = kisiTel
    }
}
