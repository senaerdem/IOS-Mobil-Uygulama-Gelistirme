//
//  ViewController.swift
//  Slider-Stepper
//
//  Created by Sena Nur Erdem on 19.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var sliderLabel: UILabel!
    
    @IBOutlet weak var stepperLabel: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func stepperDegisimKontrol(_ sender: UIStepper) {
        
        stepperLabel.text = "Stepper \(Int(sender.value))"
    }
    
    @IBAction func sliderDegisimKontrol(_ sender: UISlider) {
        
        sliderLabel.text = "Slider: \(Int(sender.value))"
    }
    
    @IBAction func tikla(_ sender: Any) {
        
        print("Slider değer: \(Int(slider.value))")
        print("Stepper değer: \(Int(stepper.value))")
    }
}

