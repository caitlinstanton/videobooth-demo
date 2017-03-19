//
//  FirstViewController.swift
//  page1
//
//  Created by lrc on 3/7/17.
//  Copyright © 2017 lrc. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    private let SCREENSIZE = UIScreen.main.bounds
    var welcomeLabel: UILabel!
    var lrcImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.lightGray
        addUIElements()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
            self.showAgreementViewControllerModal()
        })
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addUIElements() {
        welcomeLabel = UILabel(frame: CGRect(x:30, y:380, width:SCREENSIZE.width-60, height:60))
        welcomeLabel.text = NSLocalizedString("Hi and welcome to Videobooth!", comment: "welcome message")
        welcomeLabel.lineBreakMode = .byWordWrapping // or NSLineBreakMode.ByWordWrapping
        welcomeLabel.numberOfLines = 0
        welcomeLabel.textAlignment = .center
        
        lrcImage = UIImageView(frame: CGRect(x:SCREENSIZE.width/2-100, y:50, width:200, height:200))
        lrcImage.image = #imageLiteral(resourceName: "LRClogo")
        
        view.addSubview(welcomeLabel)
        view.addSubview(lrcImage)
    }
    
    func showAgreementViewControllerModal() {
        //pull up RedViewController with modal transition, by pulling the view up from the bottom
        let agreementViewController = AgreementViewController()
        present(agreementViewController, animated: true) {
            //code executed after redViewController is presented
            print("good job")
        }
    }
    
    func showAgreementViewControllerPush() {
        let agreementViewController = AgreementViewController()
        if let navController = self.navigationController {
            navController.pushViewController(agreementViewController, animated: true)
        }
        //navigationController?.pushViewController(redViewController, animated: true)
    }

    
}
