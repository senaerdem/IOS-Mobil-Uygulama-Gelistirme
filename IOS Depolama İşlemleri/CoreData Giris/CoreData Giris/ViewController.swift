//
//  ViewController.swift
//  CoreData Giris
//
//  Created by Sena Nur Erdem on 30.03.2023.
//

import UIKit
import CoreData // ilgili kütüphanenin eklenmesi

let appDelegate = UIApplication.shared.delegate as! AppDelegate
// gloabal olmalı

class ViewController: UIViewController {

    let context = appDelegate.persistentContainer.viewContext
    
    var kisilerListe = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //veriKaydi()
        //veriOkumaSiralama()
        //veriOkuma()
        //veriSil()
        //veriGuncelle()
        //veriOkuma()
        veriOkumaFiltreleme()
    }
    
    func veriKaydi(){
        
        let kisi = Kisiler(context: context)
        // Kisiler sınıfı oluşturduğumuz tabloyu temsil eder.
        // Kisiler sınıfın alanlarına veriler eklenir. Yeni tablo alanlarına
        kisi.kisi_ad = "Sena"
        kisi.kisi_yas = 22
        
        // Veri kaydı yapılır
        appDelegate.saveContext()
    }
    
    func veriOkuma(){
        
        do{
            kisilerListe = try context.fetch(Kisiler.fetchRequest())
            
        }catch{
            print("Veri okurken hata oluştu.")
        }
        
        // Verileri gösterme
        for k in kisilerListe{
            print("Ad: \(k.kisi_ad!) - Yaş: \(k.kisi_yas)")
        }
    }
    
    func veriSil(){
        
        let kisi = kisilerListe[1]
        // Belirtilen indeksteki kisi nesnesi alınır.
        context.delete(kisi)
        // Silme işlemi gerçekleştirilir.
        appDelegate.saveContext()
    }
    
    func veriGuncelle(){
        let kisi = kisilerListe[1]
        // Belirtilen indeksteki kisi nesnesi alınır.
        kisi.kisi_ad = "Sena Nur"
        kisi.kisi_yas = 78
        // Nesneye yeni veriler eklenir.
        appDelegate.saveContext()
    }
    
    func veriOkumaSiralama(){
        let fetchReuest:NSFetchRequest<Kisiler> = Kisiler.fetchRequest() // nesne oluştur
        
        // Hangi alan üzerinde sıralama yapacağımızı belirtiyoruz.
        // Kisiler tablosunun kisi_yas alanında sıralama yapılacak.
        // ascending: true -> küçükten büyüğe
        // ascending: false -> büyükten küçüğe
        let sort = NSSortDescriptor(key: #keyPath(Kisiler.kisi_yas),ascending: true)
        
        fetchReuest.sortDescriptors = [sort] //Sıralama fetchRequest nesnesine eklenir.
        
        do{
            kisilerListe = try context.fetch(fetchReuest)
            // Yeni fetchRequest nesnesi ile veri alırken sıralama değişir.
        }catch{
            print("Veri okunurken hata oluştu")
        }
        
        // Verileri gösterme
        for k in kisilerListe{
            print("Ad: \(k.kisi_ad!) - Yaş: \(k.kisi_yas)")
        }
        
    }
    
    func veriOkumaFiltreleme(){
        
        // @ = String i = integer Temsil eder.
        let fetchReuest:NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
        
        // Sorgu oluşturulur. kisi yaşı 22 ye eşit olan veriler almak için
        fetchReuest.predicate = NSPredicate(format: "kisi_yas == %i", 22)
        
        // Sorgu oluşturulur. kisi adı Sena Nur'a eşitse
        fetchReuest.predicate = NSPredicate(format: "kisi_ad == %@", "Sena Nur")
        
        // kisinin yası 18 den büyükse
        fetchReuest.predicate = NSPredicate(format: "kisi_yas > %i", 18)
        
        // kisinin adı a içeriyorsa
        fetchReuest.predicate = NSPredicate(format: "kisi_ad CONTAINS %@", "a")
        
        // iki şart kulllanılabilir.
        fetchReuest.predicate = NSPredicate(format: "kisi_yas == %i and kisi_ad == %@", 26, "Görkem")
        
        // ilişkisi olduğu tablodan sorgu olabilir.
        // composition yaparak erişim sağlanır.
        fetchReuest.predicate = NSPredicate(format: "kisiler_is.is_ad == %@", "spor")
        
        // NSPredicate = veritabanınıza özgü filtreleme kriterlerini uygulamak için kullanılır ve bu sorgu ile belirli bir veri alt kümesini alabilirsiniz.
        
        // NSFetchRequest = Core Data çerçevesi içinde veritabanında saklanan verilere erişmek ve bu verileri sorgulamak için kullanılan bir sınıftır.
        
        
        do{
            kisilerListe = try context.fetch(fetchReuest)
            // Yeni fetchRequest nesnesi ile sorgu sonucu veriler alınır.
        }catch{
            print("Veri okunurken hata oluştu")
        }
        
        // Verileri gösterme
        for k in kisilerListe{
            print("Ad: \(k.kisi_ad!) - Yaş: \(k.kisi_yas)")
        }
        
    }


}

