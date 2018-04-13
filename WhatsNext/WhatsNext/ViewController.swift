//
//  ViewController.swift
//  WhatsNext
//
//  Created by Castiel Li on 2018-03-16.
//  Copyright © 2018 Castiel Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchOutlet: UISwitch!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    var step = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        switchOutlet.addTarget(self, action: #selector(ViewController.switchIsChanged(mySwitch:)), for: UIControlEvents.valueChanged)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func switchIsChanged(mySwitch: UISwitch) {
        if mySwitch.isOn {
            switch step {
            case 1:
                outputLabel.text = "Step 1"
                step += 1
            case 2:
                outputLabel.text = "Step 2"
                step += 1
            case 3:
                outputLabel.text = "Step 3"
                step = 1
            default:
                outputLabel.text = "Default"
            }
        } else {
            outputLabel.text = "UISwitch is OFF"
        }
    }

}

