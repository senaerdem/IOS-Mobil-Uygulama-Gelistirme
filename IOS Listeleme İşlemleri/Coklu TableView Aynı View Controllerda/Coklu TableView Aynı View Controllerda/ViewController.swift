//
//  ViewController.swift
//  Coklu TableView Aynı View Controllerda
//
//  Created by Sena Nur Erdem on 27.02.2023.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var tableviewSehirler: UITableView!
    @IBOutlet weak var tableviewUlkeler: UITableView!
    
    var ulkeler:[String] = [String]()
    var sehirler:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeler = ["Türkiye","Almanya","Japonya","Rusya","İtalya"]
        sehirler = ["İstanbul","Ankara","Bursa","Adana","İzmir"]
        
        tableviewUlkeler.delegate = self
        tableviewUlkeler.dataSource = self
        
        tableviewSehirler.delegate = self
        tableviewSehirler.dataSource = self
    }
    
}
extension ViewController:UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var veriSayisi:Int?
        
        if tableView == tableviewUlkeler {
            veriSayisi = ulkeler.count
        }
        if tableView == tableviewSehirler {
            veriSayisi = sehirler.count
        }
        
        return veriSayisi!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell:UITableViewCell?
        
        if tableView == tableviewUlkeler {
            
            cell = tableView.dequeueReusableCell(withIdentifier: "ulkelerHucre",for: indexPath)
            
            cell?.textLabel?.text = ulkeler[indexPath.row]
        }
        
        if tableView == tableviewSehirler {
            
            cell = tableView.dequeueReusableCell(withIdentifier: "sehirlerHucre",for: indexPath)
            
            cell?.textLabel?.text = sehirler[indexPath.row]
        }
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView == tableviewUlkeler {
            print("seçilen ülke: \(ulkeler[indexPath.row])")
        }
        if tableView == tableviewSehirler {
            print("seçilen şehir: \(sehirler[indexPath.row])")
        }
        
    }
}


