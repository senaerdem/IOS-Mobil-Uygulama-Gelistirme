//
//  ViewControllerC.swift
//  Veri Transferi Storyboard Segue
//
//  Created by Sena Nur Erdem on 2.02.2023.
//

import UIKit

class ViewControllerC: UIViewController {

    @IBOutlet weak var etiketC: UILabel!
    
    var mesajC:String?
    override func viewDidLoad() {
        super.viewDidLoad()

        etiketC.text = mesajC!
    }
    
}
