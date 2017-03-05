//
//  ViewController.swift
//  videobooth-page1
//
//  Created by lrc on 3/5/17.
//  Copyright © 2017 lrc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let SCREENSIZE = UIScreen.main.bounds
    var participationForm: UITextField!
    var agreementCheckBox: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.white
        addUIElements()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addUIElements() {
        participationForm = UITextField(frame: CGRect(x:30, y:30, width:SCREENSIZE.width - 60, height:300))
        participationForm.backgroundColor = UIColor.red
        participationForm.isUserInteractionEnabled = false
        view.addSubview(participationForm)
        
        agreementCheckBox = UIButton(frame: CGRect(x:SCREENSIZE.width/2-5, y:350, width:10, height:10))
        agreementCheckBox.backgroundColor = UIColor.blue
        agreementCheckBox.addTarget(self, action: #selector(btn_box(sender:)), for: .touchUpInside)
        view.addSubview(agreementCheckBox)
        
    }
    
    @IBAction func btn_box(sender: UIButton) {
        if (btn_box.UIControlStateNormal == true)
        {
            btn_box.setBackgroundImage(UIImage(named: "box"), forState: UIControlState.Normal)
            
            btn_box.selected = false;
        }
        else
        {
            btn_box.setBackgroundImage(UIImage(named: "checkBox"), forState: UIControlState.Normal)
            
            btn_box.selected = true;
        }
    }


}

