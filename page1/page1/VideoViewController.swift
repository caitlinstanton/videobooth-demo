//
//  VideoViewController.swift
//  page1
//
//  Created by lrc on 3/7/17.
//  Copyright © 2017 lrc. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var cameraAccess: UIButton!
    var photoLibrary: UIButton!
    var submitButton: UIButton!
    var imgView: UIImageView!
    
    let picker = UIImagePickerController()
    var pickedImagePath: NSURL?
    var pickedImageData: NSData?
    var localPath: String?
    
    func cameraAccessAction(sender: UIButton) {
        picker.delegate = self
        picker.sourceType = .camera
        present(picker, animated: true, completion: nil)
    }
    
    func photoLibraryAction(sender: UIButton) {
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
    }
    
    func submitPhoto() {
        guard let path = localPath else {
            return
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.allowsEditing = false
        //submitButton.addTarget(self, action: #selector(submitPhoto), for: UIControlEvents.touchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        guard var image = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            return
        }
        image = self.imageWithImage(image: image, scaledToSize: CGSize(width: 300, height: 500))
        imgView.image = image
        
        pickedImageData = UIImagePNGRepresentation(imgView.image!) as NSData?
        
        let documentDirectory: NSString = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first! as NSString
        
        let imageName = "temp"
        let imagePath = documentDirectory.appendingPathComponent(imageName)
        /*
        if let data = UIImageJPEGRepresentation(image, 80) {
            data.write(to: imagePath, options: .atomic)
        }
        */
        localPath = imagePath
        
        dismiss(animated: true, completion: {
            
        })
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imageWithImage(image:UIImage, scaledToSize newSize:CGSize) -> UIImage{
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0);
        image.draw(in: CGRect(x:0, y:0, width:newSize.width, height:newSize.height))
        let newImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return newImage
    }
    
}
