//
//  Kelimelerdao.swift
//  SozlukUygulamasi
//
//  Created by Sena Nur Erdem on 26.10.2023.
//

import Foundation

class Kelimelerdao {
    
    let db:FMDatabase?
    
    init() {
        // Kopyalanmış veritabanını kopyalandığı yerden alarak kullanılmaya hazır hale getirilir.
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("sozluk.sqlite")
        
        db = FMDatabase(path: veritabaniURL.path) //Veritabanına bağlanmak için nesne
    }
    
    func tumKisilerAl() -> [Kelimeler] {
        var liste = [Kelimeler]()
        
        db?.open() //Veritabanı bağlantısı açılır.
        
        do{
            let rs = try db!.executeQuery("SELECT * FROM kelimeler", values: nil)
            
            while rs.next() {
                let kelime = Kelimeler(kelime_id: Int(rs.string(forColumn: "kelime_id"))!
                                   , ingilizce: rs.string(forColumn: "ingilizce")!
                                   , turkce: rs.string(forColumn: "turkce")!)
                
                liste.append(kelime)
            }
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close() //Veritabanı bağlantısı kapanır.
        
        return liste
    }
    
    func aramaYap(ingilizce:String) -> [Kelimeler] {
        var liste = [Kelimeler]()
        db?.open()
        
        do {
            let rs = try db!.executeQuery("SELECT * FROM kelimeler WHERE ingilizce like '%\(ingilizce)%'", values: nil)
            
            while rs.next() {
                let kelime = Kelimeler(
                    kelime_id: Int(rs.string(forColumn: "kelime_id"))!
                                   , ingilizce: rs.string(forColumn: "ingilizce")!
                                   , turkce: rs.string(forColumn: "turkce")!)
                
                liste.append(kelime)
            }
        } catch {
            print(error.localizedDescription)
        }
        
        db?.close()
        
        return liste
    }
    
}
