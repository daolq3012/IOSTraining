//
//  RedViewController.swift
//  3.Lifecycle_Naviagation_Controller
//
//  Created by DaoLQ on 3/6/18.
//  Copyright © 2018 DaoLQ. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func backToPrevious(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func backToRoot(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func backToView(_ sender: Any) {
        let viewController = self.navigationController?.viewControllers[1]
        self.navigationController?.popToViewController(viewController!, animated: true)
    }
}
