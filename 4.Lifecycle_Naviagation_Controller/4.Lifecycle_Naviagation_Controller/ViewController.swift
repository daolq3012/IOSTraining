//
//  ViewController.swift
//  3.Lifecycle_Naviagation_Controller
//
//  Created by DaoLQ on 3/6/18.
//  Copyright © 2018 DaoLQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("View DidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View Did Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("View Will Disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("View Did Disappear")
    }

    @IBAction func gotoBlueScreen(_ sender: Any) {
        // Storyboard
        let sb = UIStoryboard(name: "Main", bundle: nil)
        // Blue Screen
        let screen2 = sb.instantiateViewController(withIdentifier: "BlueViewController") as! BlueViewController
        // Push
        self.navigationController?.pushViewController(screen2, animated: true)
    }
}

