//
//  StackViewViewController.swift
//  3.AutoLayout
//
//  Created by DaoLQ on 3/6/18.
//  Copyright © 2018 DaoLQ. All rights reserved.
//

import UIKit

class StackViewViewController: UIViewController {
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onButton1Clicked(sender: AnyObject) {
        if image1.isHidden == false {
            UIView.animate(withDuration: 0.3, animations: { () -> Void in
                self.image1.isHidden = true
                self.button1.setTitle("Show image 1", for: .normal)
            })
        } else {
            UIView.animate(withDuration: 0.3, animations: { () -> Void in
                self.image1.isHidden = false
                self.button1.setTitle("Hide image 1", for: .normal)
            })
        }
    }
    
    @IBAction func onButton2Clicked(sender: AnyObject) {
        if image2.isHidden == false {
            UIView.animate(withDuration: 0.3, animations: { () -> Void in
                self.image2.isHidden = true
                self.button2.setTitle("Show image 2", for: .normal)
            })
        } else {
            UIView.animate(withDuration: 0.3, animations: { () -> Void in
                self.image2.isHidden = false
                self.button2.setTitle("Hide image 2", for: .normal)
            })
        }
    }
    
    @IBAction func onButton3Clicked(sender: AnyObject) {
        if image3.isHidden == false {
            UIView.animate(withDuration: 0.3, animations: { () -> Void in
                self.image3.isHidden = true
                self.button3.setTitle("Show image 3", for: .normal)
            })
        } else {
            UIView.animate(withDuration: 0.3, animations: { () -> Void in
                self.image3.isHidden = false
                self.button3.setTitle("Hide image 3", for: .normal)
            })
        }
    }
}
