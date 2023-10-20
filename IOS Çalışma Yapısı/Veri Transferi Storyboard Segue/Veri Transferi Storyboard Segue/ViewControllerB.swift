//
//  ViewControllerB.swift
//  Veri Transferi Storyboard Segue
//
//  Created by Sena Nur Erdem on 2.02.2023.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var etiketB: UILabel!
    
    var mesajB:String?
    override func viewDidLoad() {
        super.viewDidLoad()

        etiketB.text = mesajB!
    }
    
}
