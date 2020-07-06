//
//  ViewController.swift
//  Swift5QuestionApp1
//
//  Created by watar on 2020/07/05.
//  Copyright © 2020 rui watanabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, NowMaxScoreDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var maxScoreLabel: UILabel!
    
    var correctCount = 0
    var incorrectCount = 0
    var maxScore = 0
    var questionNumber = 0
    
    let imagesList = ImagesList()
    
    //get correct or incorrect from answer`s IBAction
    var pickedAnswer = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //init when reload
        super.viewWillAppear(animated)
        
        correctCount = 0
        incorrectCount = 0
        questionNumber = 0
        
        imageView.image = UIImage(named: imagesList.list[0].imageText)
        
        if UserDefaults.standard.object(forKey: "beforeCount") != nil
        {
            maxScore = UserDefaults.standard.object(forKey: "beforeCount") as! Int
        }
        
        maxScoreLabel.text = String(maxScore)
    }
    
    @IBAction func answer(_ sender: Any) {
        if (sender as AnyObject).tag == 1
        {//pushed check button
            pickedAnswer = true
        }
        else if (sender as AnyObject).tag == 2
        {//pushed cross button
            pickedAnswer = false
        }
        
        check()
        nextQuestion()
    }
    
    func check()
    {
        let correctAnswer = imagesList.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer
        {
            correctCount += 1
            print("correct")
        }
        else
        {
            incorrectCount += 1
            print("wrong")
        }
    }
    
    func nextQuestion ()
    {
        if questionNumber <= 9
        {
            questionNumber += 1
            imageView.image = UIImage(named: imagesList.list[questionNumber].imageText)
        }
        else
        {
            print("Finished")
            
            performSegue(withIdentifier: "next", sender: nil)
        }
    }
    
    func nowMaxScore(score: Int) {
        maxScoreLabel.text = String(score)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "next")
        {
            let nextVC = segue.destination as! NextViewController
            
            nextVC.correctedCount = correctCount
            nextVC.incorrectedCount = incorrectCount
            nextVC.delegate = self
        }
    }
}
