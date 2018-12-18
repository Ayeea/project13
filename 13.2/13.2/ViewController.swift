//
//  ViewController.swift
//  13.2
//
//  Created by jiang on 2018/12/15.
//  Copyright © 2018年 pengyun. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var urlTF: UITextField!
    @IBOutlet weak var web: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        if let url = URL(string: "https://www.163.com"){
            web.load(URLRequest(url: url))
        }
    }
    
    @IBAction func back(_ sender: Any) {
        web.goBack()
    }
    
    @IBAction func forward(_ sender: Any) {
        web.goForward()
    }
    
    @IBAction func reload(_ sender: Any) {
        web.reload()
    }
    
    @IBAction func go(_ sender: Any) {
        if let url = URL(string: urlTF.text!){
            web.load(URLRequest(url: url))
        }
    }
    

}

