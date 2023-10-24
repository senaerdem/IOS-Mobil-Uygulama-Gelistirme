//
//  ViewController.swift
//  Texfield ile PickerView Görüntüleme
//
//  Created by Sena Nur Erdem on 24.02.2023.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource { //protokolleri ekledik

    @IBOutlet weak var textfieldUlke: UITextField!
    
    var pickerView:UIPickerView?
    
    var ulkeler:[String] = [String]() //Veri kümesinin oluşturulması
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeler = ["Türkiye","Almanya","Japonya","Rusya","İtalya"]
        
        pickerView = UIPickerView() //pickerView oluşturulur
        pickerView?.dataSource = self //pickerView'e ait metodları çalıştırmak için protocole bağlanır.
        pickerView?.delegate = self //pickerView'e ait metodları çalıştırmak için protocole bağlanır.
        
        textfieldUlke.inputView = pickerView // textfield'a tıklanınca pickerView açılır.
        
        // Toolbar
        let toolbar = UIToolbar()
        toolbar.tintColor = UIColor.red
        toolbar.sizeToFit() //Toolbar boyutlandırılır
        
        // Adding Button Toolbar
        let tamamButton = UIBarButtonItem(title: "Tamam", style: .plain, target: self, action: #selector(ViewController.tamamTikla))
        //Toolbar üzerindeki tamam butonu tamamTikla metodunu tetikler
        
        let boslukButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        //Toolbar üzerinde boşluk oluşturulur.
        
        let iptalButton = UIBarButtonItem(title: "İptal", style: .plain, target: self, action: #selector(ViewController.iptalTikla))
        //Toolbar üzerindeki iptal butonu iptalTikla metodunu tetikler
        
        toolbar.setItems([iptalButton,boslukButton,tamamButton], animated: true)
        //Toolbara buttonların eklenmesi
        
        textfieldUlke.inputAccessoryView = toolbar
        //Toolbarın textfield ile açılması
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ulkeler.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ulkeler[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textfieldUlke.text = ulkeler[row]
    }
    @objc func tamamTikla() {
        view.endEditing(true) //Toolbar üzerindeki Tamam butonuna tıklanınca pickerview kapanır.
    }
    @objc func iptalTikla() {
        textfieldUlke.text = "" //textfield içindeki veri silinir
        textfieldUlke.placeholder = "Ülke Seç" //textfield placeholderına yazı yazılır
        view.endEditing(true) //Pickerview kapanır.
    }
}

