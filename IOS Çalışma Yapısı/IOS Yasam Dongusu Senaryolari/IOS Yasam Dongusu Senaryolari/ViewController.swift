//
//  ViewController.swift
//  IOS Yasam Dongusu Senaryolari
//
//  Created by Sena Nur Erdem on 5.02.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() { // ilk çalışmada çalışır
        super.viewDidLoad()
        print("viewDidLoad çalıştı")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear çalıştı")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear çalıştı")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear çalıştı")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear çalıştı")
    }
    
}

