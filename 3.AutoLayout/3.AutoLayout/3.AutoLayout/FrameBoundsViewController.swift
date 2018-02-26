//
//  ViewController.swift
//  3.AutoLayout
//
//  Created by DaoLQ on 2/23/18.
//  Copyright © 2018 DaoLQ. All rights reserved.
//

import UIKit

class FrameBoundsViewController: UIViewController {
    
    @IBOutlet weak var viewGreen: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func sliderFrameXValueChange(_ sender: Any) {
        if let sliderBar = sender as? UISlider {
            viewGreen.frame.origin.x = CGFloat(sliderBar.value)
        }
    }
    
    @IBAction func sliderFrameYValueChange(_ sender: Any) {
        if let sliderBar = sender as? UISlider {
            viewGreen.frame.origin.y = CGFloat(sliderBar.value)
        }    }
    
    @IBAction func sliderBoundValueXChange(_ sender: Any) {
        if let sliderBar = sender as? UISlider {
            viewGreen.bounds.origin.x = CGFloat(sliderBar.value)
        }    }
    
    @IBAction func sliderBoundValueYChange(_ sender: Any) {
        if let sliderBar = sender as? UISlider {
            viewGreen.bounds.origin.x = CGFloat(sliderBar.value)
        }
    }
}
