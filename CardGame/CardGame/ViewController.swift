//
//  ViewController.swift
//  CardGame
//
//  Created by Lakshay Nanda on 12/19/19.
//  Copyright © 2019 Lakshay Nanda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreView: UILabel!
    
   
    @IBOutlet weak var rightScoreView: UILabel!
    var leftScore = 0
    var rightScore = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func dealTap(_ sender: Any) {
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in:2...14)
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        
        
        if leftNumber > rightNumber
        {
            leftScore += 1
            leftScoreView.text = String(leftScore)
        }
        else if rightNumber > leftScore
        {
            rightScore += 1
            rightScoreView.text = String(rightScore)
        }
        else{
            
        }
     }
}

