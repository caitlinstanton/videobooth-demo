//
//  ContainerViewController.swift
//  views
//
//  Created by lrc on 4/23/17.
//  Copyright © 2017 lrc. All rights reserved.
//

import Cocoa

class ContainerViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let mainStoryboard: NSStoryboard = NSStoryboard(name: "Main", bundle: nil)
        let sourceViewController = mainStoryboard.instantiateController(withIdentifier: "sourceViewController") as! NSViewController
        self.insertChildViewController(sourceViewController, at: 0)
        self.view.addSubview(sourceViewController.view)
        self.view.frame = sourceViewController.view.frame
    }
    
}
