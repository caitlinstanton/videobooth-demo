//
//  AgreementViewController.swift
//  macos
//
//  Created by Caitlin Stanton on 4/11/17.
//  Copyright © 2017 Caitlin Stanton. All rights reserved.
//

import Cocoa

class AgreementViewController: NSViewController {

    @IBOutlet weak var agreementScroll: NSScrollView!
    @IBOutlet weak var agreementText: NSTextField!
    @IBOutlet weak var fullNameLabel: NSTextField!
    @IBOutlet weak var fullNameField: NSTextField!
    @IBOutlet weak var emailText: NSTextField!
    @IBOutlet weak var emailField: NSTextField!
    @IBOutlet weak var agreeCheckbox: NSButton!
    @IBOutlet weak var submitButton: NSButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func agreementSubmitButtonPressed(_ sender: NSButton) {
        if (fullNameField.stringValue == "" || emailField.stringValue == "" || agreeCheckbox.state == 0) {
            agreementText.stringValue = "Error in the entered values"
            agreementText.textColor = NSColor.red
        } else {
            let videoViewController = storyboard?.instantiateController(withIdentifier: "video") as! NSViewController
            presentViewControllerAsModalWindow(videoViewController)
        }
    }

}
