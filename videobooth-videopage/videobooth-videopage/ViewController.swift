//
//  ViewController.swift
//  videobooth-videopage
//
//  Created by lrc on 3/21/17.
//  Copyright © 2017 lrc. All rights reserved.
//

import UIKit
import MediaPlayer
import MobileCoreServices

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var videoViewController: UIViewController!
    
    var NSURL
    var MPMoviePlayerController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view, typically from a nib.
        addElements()
    }

    func addElements() {
        let captureButton = UIButton(frame: CGRect(x:view.frame.width/2-50, y:600, width:100, height:20))
        captureButton.setTitle("Capture", for: UIControlState.normal)
        captureButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
        captureButton.addTarget(self, action: #selector(captureVideo), for: .touchUpInside)
        view.addSubview(captureButton)
    }
    
    func captureVideo() {
        if (UIImagePickerController .isSourceTypeAvailable(UIImagePickerControllerSourceType = .camera)) {
        //if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            UIImagePickerController *picker = [[UIImagePickerController alloc] init];
            picker.delegate = self;
            picker.allowsEditing = YES;
            picker.sourceType = UIImagePickerControllerSourceTypeCamera;
            picker.mediaTypes = [[NSArray alloc] initWithObjects: (NSString *) kUTTypeMovie, nil];
            
            [self presentViewController:picker animated:YES completion:NULL];
        }
    }


}

