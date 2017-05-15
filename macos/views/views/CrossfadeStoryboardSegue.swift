//
//  CrossfadeStoryboardSegue.swift
//  views
//
//  Created by lrc on 4/23/17.
//  Copyright © 2017 lrc. All rights reserved.

//http://theiconmaster.com/2015/03/transitioning-between-view-controllers-in-the-same-window-with-swift-mac/
//

import Cocoa

class CrossfadeStoryboardSegue: NSStoryboardSegue {
    
    override init(identifier: String?,
                  source sourceController: Any,
                  destination destinationController: Any) {
        var myIdentifier : String
        if identifier == nil {
            myIdentifier = ""
        } else {
            myIdentifier = identifier!
        }
        super.init(identifier: myIdentifier, source: sourceController, destination: destinationController)
    }
    
    override func perform() {
        
        let sourceViewController = self.sourceController as! NSViewController
        let destinationViewController = self.destinationController as! NSViewController
        let containerViewController = sourceViewController.parent!
        containerViewController.insertChildViewController(destinationViewController, at: 1)
        var targetSize = destinationViewController.view.frame.size
        var targetWidth = destinationViewController.view.frame.size.width
        var targetHeight = destinationViewController.view.frame.size.height
        sourceViewController.view.wantsLayer = true
        destinationViewController.view.wantsLayer = true
        containerViewController.transition(from: sourceViewController, to: destinationViewController,
                                                             options: NSViewControllerTransitionOptions.crossfade, completionHandler: nil)
    }

}
