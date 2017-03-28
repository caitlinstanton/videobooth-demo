//
//  ViewController.swift
//  page1
//
//  Created by lrc on 3/5/17.
//  Copyright © 2017 lrc. All rights reserved.
//

import UIKit

class AgreementViewController: UIViewController {
    
    private let SCREENSIZE = UIScreen.main.bounds
    var participationForm: UITextView!
    var instructionLabel: UILabel!
    var agreementCheckBox: UIButton!
    var nameLabel: UILabel!
    var nameTextField: UITextField!
    var continueButton: UIButton!
    var emailLabel: UILabel!
    var emailTextField: UITextField!

    
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
        participationForm.layer.borderColor = UIColor.black.cgColor
        participationForm.backgroundColor = UIColor.gray
        participationForm.isUserInteractionEnabled = false
        participationForm.isScrollEnabled = true
        view.addSubview(participationForm)
        
        instructionLabel = UILabel(frame: CGRect(x:participationForm.frame.origin.x, y:participationForm.frame.origin.y + participationForm.frame.height, width:SCREENSIZE.width-60, height:60))
        instructionLabel.text = "I have fully read and understood the agreement above"
        instructionLabel.lineBreakMode = .byWordWrapping // or NSLineBreakMode.ByWordWrapping
        instructionLabel.numberOfLines = 0
        instructionLabel.textAlignment = .center
        view.addSubview(instructionLabel)
        
        agreementCheckBox = UIButton(frame: CGRect(x:SCREENSIZE.width/2-50, y:instructionLabel.frame.origin.y + instructionLabel.frame.height + 10, width:100, height:50))
        agreementCheckBox.setTitle("I Agree", for: .normal)
        agreementCheckBox.backgroundColor = UIColor.blue
        agreementCheckBox.addTarget(self, action: #selector(makeSignatureAppear), for: .touchUpInside)
        view.addSubview(agreementCheckBox)
        
        nameLabel = UILabel(frame: CGRect(x:participationForm.frame.origin.x, y:instructionLabel.frame.origin.y + instructionLabel.frame.height + 10, width:80, height:30))
        nameLabel.text = "Full Name"
        nameLabel.isHidden = true
        view.addSubview(nameLabel)
        
        nameTextField = UITextField(frame: CGRect(x:nameLabel.frame.origin.x + nameLabel.frame.width, y:instructionLabel.frame.origin.y + instructionLabel.frame.height + 10, width:SCREENSIZE.width-160, height:30))
        nameTextField.layer.cornerRadius = 2.0
        nameTextField.layer.masksToBounds = true
        nameTextField.layer.borderColor = UIColor.gray.cgColor
        nameTextField.layer.borderWidth = 2.0
        nameTextField.isHidden = true
        view.addSubview(nameTextField)
        
        emailLabel = UILabel(frame: CGRect(x:participationForm.frame.origin.x, y:nameLabel.frame.origin.y + nameLabel.frame.height + 5, width:80, height:30))
        emailLabel.text = "Email"
        emailLabel.isHidden = true
        view.addSubview(emailLabel)
        
        emailTextField = UITextField(frame: CGRect(x:emailLabel.frame.origin.x + emailLabel.frame.width, y:nameLabel.frame.origin.y + nameLabel.frame.height + 5, width:SCREENSIZE.width-160, height:30))
        emailTextField.layer.cornerRadius = 2.0
        emailTextField.layer.masksToBounds = true
        emailTextField.layer.borderColor = UIColor.gray.cgColor
        emailTextField.layer.borderWidth = 2.0
        emailTextField.isHidden = true
        view.addSubview(emailTextField)
        
        continueButton = UIButton(frame: CGRect(x:SCREENSIZE.width/2-50, y:emailLabel.frame.origin.y + emailLabel.frame.height + 10, width:100, height:50))
        continueButton.setTitle("Continue", for: .normal)
        continueButton.backgroundColor = UIColor.blue
        continueButton.isHidden = true
        continueButton.addTarget(self, action: #selector(displayVideoViewControllerModally), for: .touchUpInside)
        view.addSubview(continueButton)
    }
    
    func makeSignatureAppear(){
        instructionLabel.text = "Enter your full name and email to confirm and continue"
        
        instructionLabel.frame.origin.y = 50
        nameLabel.frame.origin.y = instructionLabel.frame.origin.y + instructionLabel.frame.height + 10
        nameTextField.frame.origin.y = instructionLabel.frame.origin.y + instructionLabel.frame.height + 10
        emailLabel.frame.origin.y = nameLabel.frame.origin.y + nameLabel.frame.height + 5
        emailTextField.frame.origin.y = nameLabel.frame.origin.y + nameLabel.frame.height + 5
        continueButton.frame.origin.y = emailLabel.frame.origin.y + emailLabel.frame.height + 10
        
        participationForm.isHidden = true
        agreementCheckBox.isHidden = true
        nameLabel.isHidden = false
        nameTextField.isHidden = false
        continueButton.isHidden = false
        emailTextField.isHidden = false
        emailLabel.isHidden = false
    }
    
    func displayVideoViewControllerModally() {
        let videoViewController = VideoViewController()
        present(videoViewController, animated: true, completion: nil)
    }
    
    
}
