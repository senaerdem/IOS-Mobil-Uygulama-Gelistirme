//
//  ViewController.swift
//  PickerView
//
//  Created by Sena Nur Erdem on 24.02.2023.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var labelSonuc: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    var ulkeler:[String] = [String]() // Bir veri kümesi tanımladık
    
    var secilenUlke:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeler = ["Türkiye","Almanya","Japonya","Rusya","İtalya"]
        
        pickerView.delegate = self
        pickerView.dataSource = self
        // Artık picker view delegate'in metodlarını çalıştırır
    }
    
    // func numberOfComponents : PickerView sütun sayısı
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //  func numberOfRowsInComponent : PickerView içindeki eleman sayısı
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ulkeler.count
    }
    
    // func titleForRow : PickerView içine veriler satır satır eklenir
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ulkeler[row]
    }
    
    // func didSelectRow : PickerView elemanına tıklanıldığında çalışır
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        labelSonuc.text = ulkeler[row]
        
        secilenUlke = ulkeler[row]
        
    }
    
    @IBAction func goster(_ sender: Any) {
        print(secilenUlke!)
    }
    
}

