//
//  ViewController.swift
//  Buoi2_Bai1
//
//  Created by DaoLQ on 2/22/18.
//  Copyright © 2018 DaoLQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var imgBaby: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lbl.text = "Hello World!"
        lbl.textColor = UIColor.red
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "hinh.jpg")!)
    }

    // Actions
    @IBAction func clickButton(_ sender: Any) {
        lbl.text = "Dao Le"
    }
    
    @IBAction func loadImageFromLocal(_ sender: Any) {
        imgBaby.image = UIImage(named: "hinh.jpg")
    }
    
    @IBAction func loadImageFromInternet(_ sender: Any) {
        // URL
        let urlImageHttps = URL(string: "https://ae01.alicdn.com/kf/HTB1f8v8LpXXXXcdXpXXq6xXFXXXU/7-Color-Choice-Fashion-Beauty-Hot-Baby-Kids-Girls-Stretch-Lace-Bow-Hairbands-Headband-Turban-Knot.jpg")
        let urlImageHttp = URL(string: "http://api-book.framgia.vn/image//2017/12/book/101126ciner26.jpg?p=medium_web&s=712e758851207606f769a824a1128938")
        
        // Data
        do {
            let data = try Data(contentsOf: urlImageHttp!)
            imgBaby.image = UIImage(data: data)
        } catch {
            print("Error when load image!")
        }
        
        // Show Image High
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

