//
//  VideoViewController.swift
//  page1
//
//  Created by lrc on 3/7/17.
//  Copyright © 2017 lrc. All rights reserved.
//

import UIKit
import MobileCoreServices

class VideoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    private let SCREENSIZE = UIScreen.main.bounds
    var videoView: UIImageView!
    var recordButton: UIButton!
    var stopButton: UIButton!
    //var submitButton: UIButton
    
    let picker = UIImagePickerController()
    var pickedImagePath: URL?
    var pickedImageData: Data?
    var localPath: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.allowsEditing = false
        //submitButton.addTarget(self, action: #selector(PhotoController.submitPhoto(_:)), for: UIControlEvents.touchUpInside)
        view.backgroundColor = .white
        addElements()
    }
    
    func addElements() {
        videoView = UIImageView(frame: CGRect(x: 0, y: 0, width: SCREENSIZE.width, height: 2*(SCREENSIZE.width/3.0)))
        view.addSubview(videoView)
        
        recordButton = UIButton(frame: CGRect(x:20, y: SCREENSIZE.height - 80, width: SCREENSIZE.width/3.0, height: 50))
        recordButton.setTitle("Record", for: .normal)
        recordButton.backgroundColor = UIColor.green
        recordButton.addTarget(self, action: #selector(cameraAccessAction(_:)), for: .touchUpInside)
        view.addSubview(recordButton)
        
        stopButton = UIButton(frame: CGRect(x: SCREENSIZE.width - (SCREENSIZE.width/3.0+20), y: SCREENSIZE.height - 80, width: SCREENSIZE.width/3.0, height: 50))
        stopButton.setTitle("Stop", for: .normal)
        stopButton.backgroundColor = UIColor.red
        //recordButton.addTarget(self, action: #selector(), for: .touchUpInside)
        view.addSubview(stopButton)
        
    }

    func cameraAccessAction(_ sender: UIButton) {
        picker.delegate = self
        //picker.sourceType = .camera
        
        picker.cameraDevice=UIImagePickerControllerCameraDeviceFront;
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        present(picker, animated: true, completion: nil)
    }
    
    func submitPhoto(_ sender: UIButton) {
        guard let path = localPath else {
            return
        }

    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        guard var image = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            return
        }
        image = self.imageWithImage(image, scaledToSize: CGSize(width: 300, height: 500))
        videoView.image = image
        
        pickedImageData = UIImagePNGRepresentation(videoView.image!)
        
        let documentDirectory: NSString = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first! as NSString
        
        let imageName = "temp"
        let imagePath = documentDirectory.appendingPathComponent(imageName)
        
        if let data = UIImageJPEGRepresentation(image, 80) {
            try? data.write(to: URL(fileURLWithPath: imagePath), options: [.atomic])
        }
        
        localPath = imagePath
        
        dismiss(animated: true, completion: {
            
        })
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imageWithImage(_ image:UIImage, scaledToSize newSize:CGSize) -> UIImage{
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0);
        image.draw(in: CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height))
        let newImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return newImage
    }
    

}
