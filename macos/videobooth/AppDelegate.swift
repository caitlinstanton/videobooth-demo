//
//  AppDelegate.swift
//  videobooth
//
//  Created by lrc on 3/21/17.
//  Copyright © 2017 lrc. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    let newWindow = NSWindow(contentRect: NSMakeRect(100, 100, 600, 200),
                             styleMask: NSResizableWindowMask,
                             backing: NSBackingStoreType.buffered, defer: true)
    let newText = NSTextField(frame: NSMakeRect(0, NSScreen.main()!.frame.height/4, NSScreen.main()!.frame.width/2, 40))
    let myView = NSView(frame: NSMakeRect(0, 0, NSScreen.main()!.frame.width/2, NSScreen.main()!.frame.height/2))
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        newText.font = NSFont(name: "Arial Black", size: 24)
        newText.backgroundColor = NSColor.gray
        newText.isBordered = false
        newText.textColor = NSColor.white
        newText.alignment = .center
        newText.stringValue = "Hello World"
        newText.isSelectable = false
        newWindow.isOpaque = false
        newWindow.isMovableByWindowBackground = true
        newWindow.backgroundColor = NSColor(calibratedHue: 0, saturation: 1.0, brightness: 0, alpha: 0.7)
        newWindow.title = "Hello World"
        newWindow.center()
        newWindow.contentView?.addSubview(myView)
        myView.addSubview(newText)
        newWindow.makeKeyAndOrderFront(nil)
    }
    
    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

