//
//  InterfaceController.swift
//  Pace_Linenfelser WatchKit Extension
//
//  Created by Andrew Linenfelser on 2/11/16.
//  Copyright © 2016 Andrew Linenfelser. All rights reserved.
//

import WatchKit
import Foundation
import CoreLocation


class InterfaceController: WKInterfaceController, CLLocationManagerDelegate {
    
    @IBOutlet var intervalSlider: WKInterfaceSlider!
    @IBOutlet var intervalSliderLabel: WKInterfaceLabel!
    
    @IBAction func udateIntervalTime(var value: Double) {
        
        let rep = true
        
        value *= 100
        let valueSet = 5.0
        intervalSliderLabel.setText("\(value) seconds")
        
        
        _ = NSTimer.scheduledTimerWithTimeInterval(valueSet, target: self, selector: "alertUser", userInfo: nil, repeats: rep)
        
    }
    
    func alertUser(){
        WKInterfaceDevice.currentDevice().playHaptic(.Start)
    }
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
