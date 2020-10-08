//
//  AppDelegate.swift
//  cube-on-desktop
//
//  Created by Andrew Tan on 2020-10-08.
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView()

        // Create the window and set the content view.
        window = NSWindow(
            contentRect: NSRect(
                x: 0,
                y: 0,
                width: Environment.swidth!,
                height: Environment.sheight!
            ),
            styleMask: [ .fullSizeContentView ],
            backing: .buffered,
            defer: false)
        window!.backgroundColor = NSColor.clear
        window!.ignoresMouseEvents = true
        window!.collectionBehavior = [.transient, .ignoresCycle]
        window!.isOpaque = true
        window!.level = .statusBar
        window!.contentBorderThickness(for: NSRectEdge(rectEdge: CGRectEdge(rawValue: 1)!))
        window!.titleVisibility = .visible
        
        window.isReleasedWhenClosed = false
        window.center()
        window.setFrameAutosaveName("Main Window")
        window.contentView = NSHostingView(rootView: contentView)
        window.makeKeyAndOrderFront(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

