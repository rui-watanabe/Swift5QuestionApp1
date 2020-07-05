//
//  ViewController.swift
//  Swift5QuestionApp1
//
//  Created by watar on 2020/07/05.
//  Copyright © 2020 rui watanabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var maxScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func answer(_ sender: Any) {
        if (sender as AnyObject).tag == 1
        {//pushed check button
            
        }
        else if (sender as AnyObject).tag == 2
        {//pushed cross button
            
        }
    }
}
