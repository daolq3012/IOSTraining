//
//  LoginViewController.swift
//  3.AutoLayout
//
//  Created by DaoLQ on 2/27/18.
//  Copyright © 2018 DaoLQ. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnRegister: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnLogin.layer.cornerRadius = 0.2*btnLogin.bounds.size.height
        btnLogin.layer.borderWidth = 1.0
        btnLogin.layer.borderColor = UIColor.white.cgColor
        
        btnRegister.layer.cornerRadius = 0.2*btnLogin.bounds.size.height
        btnRegister.layer.borderWidth = 1.0
        btnRegister.layer.borderColor = UIColor.white.cgColor
    }
}
