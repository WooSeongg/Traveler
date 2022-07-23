//
//  WebViewController.swift
//  Conversion
//
//  Created by 미미밍 on 2021/11/22.
//

import UIKit
import WebKit

class WebViewController: UIViewController {


    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let url = URL(string:"https://translate.google.com") else{return}
        let request = URLRequest(url: url)
        webView.load(request)
    }
    @IBAction func webselect(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            guard let url = URL(string:"https://translate.google.com") else{return}
            let request = URLRequest(url: url)
            webView.load(request)
        }else if sender.selectedSegmentIndex == 1{
            guard let url = URL(string:"https://google.com") else{return}
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
}
