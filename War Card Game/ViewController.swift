//
//  ViewController.swift
//  War Card Game
//
//  Created by Gabriel Campos on 25/05/2018.
//  Copyright © 2018 Gabriel Campos. All rights reserved.
//

import UIKit
import AVFoundation

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
        // Dispose of any resources that can be recreated.
    }


    @IBAction func dealTapped(_ sender: Any) {
    
        // Randomize two numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
        
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        // Change the image views
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
    
        // Compare the numbers
        if leftRandomNumber > rightRandomNumber {
            
            // Update Score
            leftScore += 1
            
            // Update Score
            leftScoreLabel.text = String(leftScore)
        }
        else if rightRandomNumber > leftRandomNumber {
            
            // Update Score
            rightScore += 1
            
            // Update Score
            rightScoreLabel.text = String(rightScore)
        }
        else if leftRandomNumber == rightRandomNumber {
            
        }
    }
    @IBAction func resetButton(_ sender: Any) {
        rightScore = 0
        leftScore = 0
        leftScoreLabel.text = String(leftScore)
        rightScoreLabel.text = String(rightScore)
        
        leftImageView.image = UIImage(named: "blueback")
        
        rightImageView.image = UIImage(named: "redback")
    }
    
    
}

