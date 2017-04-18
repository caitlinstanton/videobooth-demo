//
//  FirstViewController.swift
//  macos
//
//  Created by Caitlin Stanton on 4/11/17.
//  Copyright © 2017 Caitlin Stanton. All rights reserved.
//

import Cocoa

class FirstViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    @IBOutlet weak var nextButton: NSButton!

    @IBAction func presentAgreementViewModally(_ sender: NSButton) {
        let agreementViewController = storyboard?.instantiateController(withIdentifier: "agreement") as! NSViewController
        presentViewControllerAsSheet(agreementViewController)
        let selfViewController = self
        dismissViewController(selfViewController)
    }

    
}
