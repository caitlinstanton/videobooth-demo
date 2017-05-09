//
//  VideoViewController.swift
//  avfoundationtest
//
//  Created by lrc on 5/9/17.
//  Copyright © 2017 lrc. All rights reserved.
//

import Cocoa
import AVFoundation

class ViewController: NSViewController {

    var captureDevice: AVCaptureDevice! = AVCaptureDevice()
    let captureSession: AVCaptureSession! = AVCaptureSession()
    var previewLayer: AVCaptureVideoPreviewLayer! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        captureSession.sessionPreset = AVCaptureSessionPresetHigh
        let devices = AVCaptureDevice.devices()
        for device in devices! {
            if ((device as AnyObject).hasMediaType(AVMediaTypeVideo)) {
                if((device as AnyObject).position == AVCaptureDevicePosition.back) {
                    captureDevice = device as? AVCaptureDevice
                    if captureDevice != nil {
                        //beginSession()
                        print(devices)
                    }
                }
            }
        }
        
    }
    
    
    
    /*
    func beginSession() {
        var err : NSError? = nil
        captureSession.addInput(AVCaptureDeviceInput(device: captureDevice, error: &err))
        if err != nil {
            print("error: \(err?.localizedDescription)")
        }
        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        self.cameraView.layer.addSublayer(previewLayer)
        self.cameraView.bringSubviewToFront(takePhotoButton)
        self.cameraView.bringSubviewToFront(self.snappedPicture)
        self.cameraView.bringSubviewToFront(self.backButton)
        previewLayer?.frame = self.cameraView.layer.frame
        captureSession.startRunning()
    }
    
    @IBAction func takeVideoAction(sender: AnyObject) {
        
        var recordingDelegate:AVCaptureFileOutputRecordingDelegate? = self
        
        var videoFileOutput = AVCaptureMovieFileOutput()
        self.captureSession.addOutput(videoFileOutput)
        
        let documentsURL = FileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)[0]
        let filePath = documentsURL.URLByAppendingPathComponent("temp")
        
        // Do recording and save the output to the `filePath`
        videoFileOutput.startRecordingToOutputFileURL(filePath, recordingDelegate: recordingDelegate)
        
    }
    
    func captureOutput(captureOutput: AVCaptureFileOutput!, didFinishRecordingToOutputFileAtURL outputFileURL: NSURL!, fromConnections connections: [AnyObject]!, error: NSError!) {
        return
    }
    
    func captureOutput(captureOutput: AVCaptureFileOutput!, didStartRecordingToOutputFileAtURL fileURL: NSURL!, fromConnections connections: [AnyObject]!) {
        return
    }
 */
    
}
