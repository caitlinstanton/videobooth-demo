//
//  VideoViewController.swift
//  page1
//
//  Created by lrc on 3/7/17.
//  Copyright © 2017 lrc. All rights reserved.
//

import UIKit
import MobileCoreServices

class VideoViewController: UIViewController {
    
    private let SCREENSIZE = UIScreen.main.bounds
    var videoView: UIImageView!
    var recordButton: UIButton!
    var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addElements()
    }
    
    func addElements() {
        videoView = UIImageView(frame: CGRect(x: 0, y: 0, width: SCREENSIZE.width, height: 2*(SCREENSIZE.width/3.0)))
        view.addSubview(videoView)
        
        recordButton = UIButton(frame: CGRect(x:20, y: SCREENSIZE.height - 80, width: SCREENSIZE.width/3.0, height: 50))
        recordButton.setTitle("Record", for: .normal)
        recordButton.backgroundColor = UIColor.green
        //recordButton.addTarget(self, action: #selector(), for: .touchUpInside)
        view.addSubview(recordButton)
        
        stopButton = UIButton(frame: CGRect(x: SCREENSIZE.width - (SCREENSIZE.width/3.0+20), y: SCREENSIZE.height - 80, width: SCREENSIZE.width/3.0, height: 50))
        stopButton.setTitle("Stop", for: .normal)
        stopButton.backgroundColor = UIColor.red
        //recordButton.addTarget(self, action: #selector(), for: .touchUpInside)
        view.addSubview(stopButton)

    }
    
}
