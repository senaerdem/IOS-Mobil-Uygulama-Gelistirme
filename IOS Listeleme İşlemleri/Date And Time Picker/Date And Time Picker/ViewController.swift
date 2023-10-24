//
//  ViewController.swift
//  Date And Time Picker
//
//  Created by Sena Nur Erdem on 23.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfieldTarih: UITextField! // textfield sadece outlet olarak tanımlanabilir
    @IBOutlet weak var textfieldSaat: UITextField!
    
    var datePicker:UIDatePicker?
    var timePicker:UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1 - textfield tıklanıldığında datepicker'ı görünür yapma
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        textfieldTarih.inputView = datePicker
        // Buraya kadar olan kısım textfield'a tıklandığında datepicker çıkar fakat tıklanıldığında çalışmaz ve ekranın boş yerlerine tıklanınca ekrandan kaybolmaz.
        
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        textfieldSaat.inputView = timePicker
        
        // 2 - datepicker üzerinde değişiklik olduğunda hedef metod tetiklenir.
        datePicker?.addTarget(self, action: #selector(self.tarihGoster(datePicker:)), for: .valueChanged)
        // addTarget bir işlem sonucunda bir metodu tetiklemek için kullanılır.
        // action bölümü metodu temsil eder.
        // self kelimesi içinde bulunulan viewcontrollerı temsil eder.
        // valuechange her veri değiştiğinde hedef metodu çalıştırır.
        
        timePicker?.addTarget(self, action: #selector(self.saatGoster(timePicker:)), for: .valueChanged)
        
        // 3 - ekranın boş alanına tıklanınca hedef metod tetiklenir.
        let dokunmaAlgilama = UITapGestureRecognizer(target: self, action: #selector(self.dokunmaAlgilamaMetod))
        // Ekranın boş alanına tıklanıldığında hedef metodu çalıştırır.
        view.addGestureRecognizer(dokunmaAlgilama)
        // Çalıştığımız ekrana dokunma algilama eklenir.
    }
    
    @objc func tarihGoster(datePicker:UIDatePicker){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let alinanTarih = dateFormatter.string(from: datePicker.date)
        
        textfieldTarih.text = alinanTarih
        // Bu kısım ile tarih datepicker'dan alınır ve textfield içine eklenir.
        // Fakat bu ekranın boş alanını seçtiğimizde kaybolmaz.
        
        view.endEditing(true) // Tarih seçildiği gibi kapanır.
        // Ekran üzerindeki editleme işlemlerini sonlandırır.
        // Klavye ve benzeri bir şey ekran üzerine açıldığında kapatır.
        
    }
    
    @objc func saatGoster(timePicker:UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm"
        let alinanSaat = dateFormatter.string(from: timePicker.date)
        
        textfieldSaat.text = alinanSaat
    }
    
    
    @objc func dokunmaAlgilamaMetod(){
        view.endEditing(true) // Ekranın boş alanına tıklarsa datepicker kaybolur.
    }


}

