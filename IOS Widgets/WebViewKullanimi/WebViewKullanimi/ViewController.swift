//
//  ViewController.swift
//  WebViewKullanimi
//
//  Created by Sena Nur Erdem on 19.02.2023.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.netflix.com/tr-en/")!
        
        webview.load(URLRequest(url: url))
        
    }


}

