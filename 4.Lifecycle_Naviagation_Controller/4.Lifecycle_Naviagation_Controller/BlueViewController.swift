//
//  BlueViewController.swift
//  3.Lifecycle_Naviagation_Controller
//
//  Created by DaoLQ on 3/6/18.
//  Copyright © 2018 DaoLQ. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func gotoRedScreen(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let redViewController = sb.instantiateViewController(withIdentifier: "RedViewController")
        self.navigationController?.pushViewController(redViewController, animated: true)
    }
    
}
