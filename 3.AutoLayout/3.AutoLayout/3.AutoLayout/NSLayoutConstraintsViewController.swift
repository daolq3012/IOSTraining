//
//  NSLayoutConstraints.swift
//  3.AutoLayout
//
//  Created by DaoLQ on 3/6/18.
//  Copyright © 2018 DaoLQ. All rights reserved.
//

import UIKit

class NSLayoutConstraintsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let redView = UIView()
        redView.backgroundColor = UIColor.red
        view.addSubview(redView)
        
        let top = NSLayoutConstraint(item: redView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 20)
        let left = NSLayoutConstraint(item: redView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 20)
        let width = NSLayoutConstraint(item: redView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1, constant: -40)
        let height = NSLayoutConstraint(item: redView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1/2, constant: 0)
        
        redView.autoresizesSubviews = false
        redView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([top,left,width,height])
    }
}
