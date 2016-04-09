//
//  ViewController.swift
//  Stopwatch
//
//  Created by Lawrence Chen on 1/26/16.
//  Copyright © 2016 lchentheiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var time = 0
    
    @IBOutlet var timerLabel: UILabel!
    
    func increaseTimer(){
        
        time++
        
        timerLabel.text = String(time)
        
    }
    
    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        
            }
    
    // Also Reset
    @IBAction func stop(sender: AnyObject) {
        
        timer.invalidate()
        time = 0
        timerLabel.text = "0"
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        // Breaking the timer - with stopping it from happening
        timer.invalidate()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

