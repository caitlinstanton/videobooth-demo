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
    //var submitButton: UIButton
    
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
        recordButton.addTarget(self, action: #selector(record), for: .touchUpInside)
        view.addSubview(recordButton)
        
        stopButton = UIButton(frame: CGRect(x: SCREENSIZE.width - (SCREENSIZE.width/3.0+20), y: SCREENSIZE.height - 80, width: SCREENSIZE.width/3.0, height: 50))
        stopButton.setTitle("Stop", for: .normal)
        stopButton.backgroundColor = UIColor.red
        //recordButton.addTarget(self, action: #selector(), for: .touchUpInside)
        view.addSubview(stopButton)
        
    }
    
    func record(_ sender: AnyObject) {
        startCameraFromViewController(self, withDelegate: self as! UIImagePickerControllerDelegate & UINavigationControllerDelegate)
    }
        
    func startCameraFromViewController(_ viewController: UIViewController, withDelegate delegate: UIImagePickerControllerDelegate & UINavigationControllerDelegate) -> Bool {
        if UIImagePickerController.isSourceTypeAvailable(.camera) == false {
            return false
        }
        
        let cameraController = UIImagePickerController()
        cameraController.sourceType = .camera
        cameraController.mediaTypes = [kUTTypeMovie as NSString as String]
        cameraController.allowsEditing = false
        cameraController.delegate = delegate
            
        present(cameraController, animated: true, completion: nil)
        return true
    }
        
    func video(_ videoPath: NSString, didFinishSavingWithError error: NSError?, contextInfo info: AnyObject) {
        var title = "Success"
        var message = "Video was saved"
        if let _ = error {
            title = "Error"
            message = "Video failed to save"
        }
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}
    
    // MARK: - UIImagePickerControllerDelegate
    
extension VideoViewController: UIImagePickerControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let mediaType = info[UIImagePickerControllerMediaType] as! NSString
        dismiss(animated: true, completion: nil)
        // Handle a movie capture
        if mediaType == kUTTypeMovie {
            //guard let path = (info[UIImagePickerControllerMediaURL] as! URL).path else { return }
            //if UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(path) {
            //UISaveVideoAtPathToSavedPhotosAlbum(path, self, #selector(RecordVideoViewController.video(_:didFinishSavingWithError:contextInfo:)), nil)
            //}
        }
    }
}
    
// MARK: - UINavigationControllerDelegate

extension  VideoViewController: UINavigationControllerDelegate {
}
