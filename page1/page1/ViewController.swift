//
//  ViewController.swift
//  page1
//
//  Created by lrc on 3/5/17.
//  Copyright © 2017 lrc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let SCREENSIZE = UIScreen.main.bounds
    var participationForm: UITextView!
    var agreementCheckBox: UIButton!
    var nameTextField: UITextField!
    var continueButton: UIButton!
    
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
        participationForm = UITextView(frame: CGRect(x:30, y:30, width:SCREENSIZE.width - 60, height:300))
        participationForm.backgroundColor = UIColor.red
        participationForm.isUserInteractionEnabled = false
        view.addSubview(participationForm)
        
        /*
         agreementCheckBox = UIButton(frame: CGRect(x:SCREENSIZE.width/2-5, y:350, width:10, height:10))
         agreementCheckBox.backgroundColor = UIColor.blue
         agreementCheckBox.addTarget(self, action: #selector(btn_box(sender:)), for: .touchUpInside)
         view.addSubview(agreementCheckBox)
         */
        
        let checkBoxLabel = UILabel(frame: CGRect(x:30, y:380, width:SCREENSIZE.width-60, height:60))
        checkBoxLabel.text = "I have fully read and understood the agreement above"
        checkBoxLabel.lineBreakMode = .byWordWrapping // or NSLineBreakMode.ByWordWrapping
        checkBoxLabel.numberOfLines = 0
        checkBoxLabel.textAlignment = .center
        view.addSubview(checkBoxLabel)
        
        let nameLabel = UILabel(frame: CGRect(x:30, y:450, width:80, height:30))
        nameLabel.text = "Full Name"
        view.addSubview(nameLabel)
        
        nameTextField = UITextField(frame: CGRect(x:120, y:450, width:SCREENSIZE.width-160, height:30))
        nameTextField.layer.cornerRadius = 2.0
        nameTextField.layer.masksToBounds = true
        nameTextField.layer.borderColor = UIColor.gray.cgColor
        nameTextField.layer.borderWidth = 2.0
        view.addSubview(nameTextField)
        
        continueButton = UIButton(frame: CGRect(x:SCREENSIZE.width/2-50, y:550, width:100, height:20))
        continueButton.setTitle("Continue", for: .normal)
        continueButton.backgroundColor = UIColor.blue
        view.addSubview(continueButton)
    }
    
    /*
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
     */
    
    
}
