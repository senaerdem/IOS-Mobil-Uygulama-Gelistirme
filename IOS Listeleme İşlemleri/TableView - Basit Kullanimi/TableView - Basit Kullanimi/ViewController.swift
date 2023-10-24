//
//  ViewController.swift
//  TableView - Basit Kullanimi
//
//  Created by Sena Nur Erdem on 24.02.2023.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var tableView: UITableView! //görsel nesne bağlandı
    
    var ulkeler:[String] = [String]() //veri kümesi oluştu
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeler = ["Türkiye","Almanya","Japonya","Rusya","İtalya","Güney Kore","Fransa","Mısır"]
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

// MODÜLER KODLAMA İÇİN EXTNSION KULLANIMI
extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    // sütun sayısı
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    // satır sayısı
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ulkeler.count
    }
    // içerisinde yazacak veriler
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hucreadi", for: indexPath)
        
        cell.textLabel?.text = ulkeler[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seçilen Ülke: \(ulkeler[indexPath.row])")
    }
    
    
    // TableView üzerine Cell Action Ekleme
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let silAction = UIContextualAction(style: .destructive, title: "Sil") {
            (contextualAction, view, boolValue) in
            // Her bir action için bu metod yazılmalıdır.
            print("\(self.ulkeler[indexPath.row]) yi sil")
        }
        
        let duzenleAction = UIContextualAction(style: .normal, title: "Düzenle") {
            (contextualAction, view , boolValue) in
            // indexPath.row ile çalıştırılan action'ın hangi satıra ait olduğunu bulabiliriz.
            // Swipe hareketei ile açılan menu gibidir.
            print("\(self.ulkeler[indexPath.row]) yi düzenli")
        }
        // Oluşturulan action'lar tableview'e eklenir.
        return UISwipeActionsConfiguration(actions: [silAction,duzenleAction])
    }
}

