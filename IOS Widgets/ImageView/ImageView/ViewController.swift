//
//  ViewController.swift
//  ImageView
//
//  Created by Sena Nur Erdem on 19.02.2023.
//

import UIKit
// ImageView: Resimleri tutan görsel nesnedir.
// image özelliği ile UIImage türünde resim yüklenir.
class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func resim1Tikla(_ sender: Any) {
        
        imageView.image = UIImage(named: "resim")
    }
    
    @IBAction func resim2Tikla(_ sender: Any) {
        
        imageView.image = UIImage(named: "stevejobs")
        
    }
}

