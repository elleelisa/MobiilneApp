//
//  ViewController.swift
//  AppOne
//
//  Created by Elle Elisa Ivantsikova on 15/03/2019.
//  Copyright © 2019 Elle Elisa Ivantsikova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        //Randomizing two numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
        print("left random number is: \(leftRandomNumber)")
        let rightRandomNumber = arc4random_uniform(13) + 2
        print("right random number is: \(rightRandomNumber)")
        
        //Changing the image views
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
    
        //Comparing the two numbers
        if leftRandomNumber > rightRandomNumber {
            //Updating the score
            leftScore += 1
            
            //Updating the label
            leftScoreLabel.text = String(leftScore)
            
        } else  if rightRandomNumber > leftRandomNumber {
            //Updating the score
            rightScore += 1
            
            //Updating the Label
            rightScoreLabel.text = String(rightScore)
        } else  if leftRandomNumber == rightRandomNumber {
            
        }
    
    }
    
    
}

