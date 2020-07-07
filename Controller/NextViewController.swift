//
//  NextViewController.swift
//  Swift5QuestionApp1
//
//  Created by watar on 2020/07/05.
//  Copyright © 2020 rui watanabe. All rights reserved.
//

import UIKit

protocol NowMaxScoreDelegate {
    func nowMaxScore(score: Int)
}

class NextViewController: UIViewController {
    
    @IBOutlet weak var correctLabel: UILabel!
    
    @IBOutlet weak var incorrectLabel: UILabel!
    
    var delegate: NowMaxScoreDelegate?
    
    var correctedCount = 0
    var incorrectedCount = 0
    
    var beforeCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        correctLabel.text = String(correctedCount)
        incorrectLabel.text = String(incorrectedCount)
        
        if UserDefaults.standard.object(forKey: "beforeCount") != nil
        {
            beforeCount = UserDefaults.standard.object(forKey: "beforeCount") as! Int
        }
    }
    
    
    @IBAction func back(_ sender: Any) {
        if beforeCount < correctedCount
        {
            UserDefaults.standard.set(correctedCount, forKey: "beforeCount")
            
            delegate?.nowMaxScore(score: correctedCount)
        }
        else if beforeCount > correctedCount
        {
            UserDefaults.standard.set(beforeCount, forKey: "beforeCount")
        }
        
        dismiss(animated: true, completion: nil)
    }
    
}
