//
//  ViewController.swift
//  avfoundationtest
//
//  Created by lrc on 5/9/17.
//  Copyright © 2017 lrc. All rights reserved.
/*

import Cocoa
import AVFoundation

class EditController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let cameraSession = AVCaptureSession()
        self.AVCaptureVideoDataOutputSampleBufferDelegate = self
        
        cameraSession.sessionPreset = AVCaptureSessionPresetLow
        let captureDevice = AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo) as AVCaptureDevice
        do {
            let deviceInput = try AVCaptureDeviceInput(device: captureDevice)
            
            cameraSession.beginConfiguration() // 1
            
            if (cameraSession.canAddInput(deviceInput) == true) {
                cameraSession.addInput(deviceInput)
            }
            
            let dataOutput = AVCaptureVideoDataOutput() // 2
            
            dataOutput.videoSettings = [(kCVPixelBufferPixelFormatTypeKey as NSString) : NSNumber(value: kCVPixelFormatType_420YpCbCr8BiPlanarFullRange as UInt32)] // 3
            
            dataOutput.alwaysDiscardsLateVideoFrames = true // 4
            
            if (cameraSession.canAddOutput(dataOutput) == true) {
                cameraSession.addOutput(dataOutput)
            }
            
            cameraSession.commitConfiguration() //5
            
            let queue = DispatchQueue(label: "com.invasivecode.videoQueue") // 6
            dataOutput.setSampleBufferDelegate(self, queue: queue) // 7
            
        }
        catch let error as NSError {
            NSLog("\(error), \(error.localizedDescription)")
        }
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func captureOutput(_ captureOutput: AVCaptureOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, fromConnection connection: AVCaptureConnection!) {
        
    }
    

}
*/
