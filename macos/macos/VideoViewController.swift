//
//  VideoViewController.swift
//  macos
//
//  Created by Caitlin Stanton on 4/11/17.
//  Copyright © 2017 Caitlin Stanton. All rights reserved.
//  https://www.raywenderlich.com/tag/avfoundation

import Cocoa
import AVFoundation
import AVKit
import QuartzCore


class VideoViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func recordButtonPressed(_ sender: NSButton) {
        //let view = NSView(frame: NSRect(x: 0.0, y: 0.0, width: 640.0, height: 480.0))
        
        let session = AVCaptureSession()
        
        session.sessionPreset = AVCaptureSessionPreset640x480
        session.beginConfiguration()
        session.commitConfiguration()
        
        var input : AVCaptureDeviceInput
        if let devices : [AVCaptureDevice] = AVCaptureDevice.devices() as? [AVCaptureDevice] {
            for device in devices {
                if device.hasMediaType(AVMediaTypeVideo) && device.supportsAVCaptureSessionPreset(AVCaptureSessionPreset640x480) {
                    do {
                        input = try AVCaptureDeviceInput(device: device as AVCaptureDevice) as AVCaptureDeviceInput
                        
                        if session.canAddInput(input) {
                            session.addInput(input)
                            break
                        }
                    }
                    catch {
                        print(error)
                    }
                }
            }
            
            let output = AVCaptureVideoDataOutput()
            output.videoSettings = [kCVPixelBufferPixelFormatTypeKey as AnyHashable: Int(kCVPixelFormatType_32BGRA)]
            output.alwaysDiscardsLateVideoFrames = true
            
            if session.canAddOutput(output) {
                session.addOutput(output)
            }
            
            let captureLayer = AVCaptureVideoPreviewLayer(session: session)
            view.wantsLayer = true
            view.layer = captureLayer
            
            session.startRunning()
            
            //View -> Assistant Editor -> Show Assistant Editor
            //XCPlaygroundPage.currentPage.liveView = view
        }
   
    }
}
