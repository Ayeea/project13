//
//  ViewController.swift
//  13.1
//
//  Created by pengyun on 2018/12/15.
//  Copyright © 2018年 pengyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sumLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sum(_ sender: Any) {
        var sum = 0
        DispatchQueue.global().async {
            for i in 1...9999999{
                sum += i
            }
            DispatchQueue.main.async {
                self.sumLabel.text = "\(sum)"
            }
        }
    }
    
    
}

