//
//  ViewController.swift
//  Navigation Controller Ozellestirme
//
//  Created by Sena Nur Erdem on 5.02.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Başlık"
        self.navigationItem.prompt = "Açıklama"
        
        //Özelleştirme bütün sayfaları etkiler
        navigationController?.navigationBar.prefersLargeTitles = true // büyük başlık özelliği
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.red // arka plan rengi
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white] // başlık rengi
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white] // büyük başlık rengi
        
        navigationController?.navigationBar.tintColor = .gray // bar button item rengi
        navigationController?.navigationBar.barStyle = .black // status bar ve prompt rengi değişimi
        
        navigationController?.navigationBar.isTranslucent = true // RGB renk paletine göre arkaplan görünür
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }

    @IBAction func buttoneEkle(_ sender: Any) {
        print("ekle tıklandı")
    }
    
}

