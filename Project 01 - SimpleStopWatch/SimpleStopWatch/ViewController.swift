//
//  ViewController.swift
//  SimpleStopWatch
//
//  Created by VICTOR CHU on 2018-01-24.
//  Copyright © 2018 Victor Chu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    
    
    var time : Double = 0
    
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func startBtn(_ sender: UIButton) {
        
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(ViewController.startAction), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseBtn(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func resetBtn(_ sender: UIButton) {
        timer.invalidate()
        time = 0.00
        timerLabel.text = String("0.00")
    }
    
    @objc func startAction() {
        time += 0.01
        timerLabel.text = String(format: "%.2f", time)
    }
}

