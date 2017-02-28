//
//  ViewController.swift
//  videobooth-test
//
//  Created by lrc on 2/28/17.
//  Copyright © 2017 lrc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var actionLabel: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    
    @IBAction func startButton(_ sender: Any) {
        actionLabel.text = "START"
    }
    @IBAction func stopButton(_ sender: Any) {
        actionLabel.text = "STOP"
    }
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

