//
//  ViewController.swift
//  Demo
//
//  Created by wang on 25/12/2017.
//  Copyright © 2017 wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        LWLocationManager.shared.getAddress { (mark) in
            if let city = mark.locality {
                print(city)
            }
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

