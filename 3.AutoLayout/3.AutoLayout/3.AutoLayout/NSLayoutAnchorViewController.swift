//
//  NSLayoutAnchorViewController.swift
//  3.AutoLayout
//
//  Created by DaoLQ on 3/6/18.
//  Copyright © 2018 DaoLQ. All rights reserved.
//

import UIKit

class NSLayoutAnchorViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redView = UIView()
        redView.backgroundColor = #colorLiteral(red: 0.8285624694, green: 0.2124449641, blue: 0.04311446535, alpha: 1)
        view.addSubview(redView)
        
        redView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        redView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        redView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
        
        redView.translatesAutoresizingMaskIntoConstraints = false
    }
}
